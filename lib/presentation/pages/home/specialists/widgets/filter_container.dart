// ignore_for_file: avoid-non-null-assertion
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/backbone/dependency_injection.dart' as di;
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/catalogue/bloc/catalogue_bloc.dart';
import 'package:mint_app/presentation/bloc/filter/bloc/filter_bloc.dart';
import 'package:mint_app/presentation/bloc/status.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class FilterContainer extends StatelessWidget {
  const FilterContainer({required this.catalogueBloc, super.key});

  final CatalogueBloc catalogueBloc;

  @override
  Widget build(BuildContext context) {
    final FilterBloc _filterBloc = di.sl.get();
    final AppLocalizations l10n = context.l10n;

    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      padding: const EdgeInsets.only(
        left: 8,
        right: 8,
        top: 5,
        bottom: 20,
      ),
      child: BlocBuilder<FilterBloc, FilterState>(
        bloc: _filterBloc,
        builder: (context, state) {
          if (state.status == BlocStatus.loading) {
            return const Center(
              child: SizedBox.square(
                dimension: 24,
                child: CircularProgressIndicator(),
              ),
            );
          }
          if (state.status == BlocStatus.loaded) {
            return ListView(
              children: [
                const Divider(
                  indent: 160,
                  endIndent: 160,
                  thickness: 4,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.close),
                    ),
                    Text(
                      l10n.filter,
                      style: AppTextStyles.boldNormal.copyWith(fontSize: 20.h),
                    ),
                    TextButton(
                      onPressed: () {
                        _filterBloc.add(const FilterEvent.clearFilter());
                      },
                      child: Text(
                        l10n.clear,
                        style:
                            AppTextStyles.subtitleGrey.copyWith(fontSize: 16.h),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                const Divider(),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  l10n.price,
                  style: AppTextStyles.boldNormal,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Theme(
                  data: ThemeData(
                    sliderTheme: const SliderThemeData(
                      showValueIndicator: ShowValueIndicator.always,
                      valueIndicatorColor: Colors.transparent,
                      valueIndicatorTextStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                  child: RangeSlider(
                    values: RangeValues(
                      state.startPrice?.toDouble() ?? 0,
                      state.endPrice?.toDouble() ?? 100,
                    ),
                    labels: RangeLabels(
                      '${state.startPrice!.toInt()}₴',
                      '${state.endPrice!.toInt()}₴',
                    ),
                    onChanged: (value) {
                      _filterBloc.add(FilterEvent.changePrice(
                        startPrice: value.start,
                        endPrice: value.end,
                      ));
                    },
                    min: 0,
                    max: state.maxPrice?.toDouble() ?? 100,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  l10n.experience,
                  style: AppTextStyles.boldNormal,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Wrap(
                  spacing: 4,
                  children: [
                    for (final experience in state.experienceList)
                      GestureDetector(
                        onTap: () {
                          _filterBloc.add(FilterEvent.selectExperience(
                            experience: experience,
                          ));
                        },
                        child: Chip(
                          label: Text(
                            experience,
                            style: AppTextStyles.regularText
                                .copyWith(fontSize: 15.h),
                          ),
                          backgroundColor: AppColors.white,
                          side: experience == state.selectedExperience
                              ? const BorderSide(color: AppColors.blue)
                              : null,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  l10n.specialities,
                  style: AppTextStyles.boldNormal,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Wrap(
                  spacing: 4,
                  children: [
                    for (final speciality in state.specialities)
                      GestureDetector(
                        onTap: () {
                          _filterBloc.add(FilterEvent.selectSpecialities(
                            selectedSeciality: speciality,
                          ));
                        },
                        child: Chip(
                          label: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: 24,
                                height: 24,
                                child: Checkbox(
                                  activeColor: AppColors.blue,
                                  shape: const CircleBorder(),
                                  splashRadius: 0,
                                  value: state.selectedSpecialities.contains(
                                    speciality,
                                  ),
                                  onChanged: (value) {
                                    _filterBloc.add(
                                      FilterEvent.selectSpecialities(
                                        selectedSeciality: speciality,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                speciality,
                                style: AppTextStyles.regularText
                                    .copyWith(fontSize: 15.h),
                              ),
                            ],
                          ),
                          backgroundColor: AppColors.white,
                          side: state.selectedSpecialities.contains(
                            speciality,
                          )
                              ? const BorderSide(color: AppColors.blue)
                              : null,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  ),
                  child: Text(l10n.applyFilters),
                  onPressed: () {
                    catalogueBloc.add(CatalogueEvent.applyFilters(
                      startPrice: state.startPrice ?? 0,
                      endPrice: state.endPrice ?? 1000,
                      experience: state.selectedExperience,
                      selectedSecialities: state.selectedSpecialities,
                    ));

                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          }

          return const Center(
            child: Text('Error'),
          );
        },
      ),
    );
  }
}
