// ignore_for_file: deprecated_member_use_from_same_package
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mint_app/backbone/dependency_injection.dart' as di;
import 'package:mint_app/data/models/doctor.dart';
import 'package:mint_app/gen/assets.gen.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/catalogue/bloc/catalogue_bloc.dart';

import 'package:mint_app/presentation/pages/home/main/widgets/doctor_container.dart';
import 'package:mint_app/presentation/pages/home/specialists/widgets/filter_container.dart';
import 'package:mint_app/routes/app_router.gr.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class SpecialistsPage extends StatelessWidget {
  const SpecialistsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CatalogueBloc _catalogueBloc = di.sl.get();
    final AppLocalizations l10n = context.l10n;

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.background,
        leadingWidth: 86,
        leading: IconButton(
          onPressed: () {
            context.navigateTo(const MainRouter());
          },
          icon: Row(
            children: [
              const Icon(
                Icons.chevron_left,
                color: AppColors.black,
              ),
              Text(
                l10n.backButton,
                style: AppTextStyles.regularText,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet<Widget>(
                isScrollControlled: true,
                context: context,
                backgroundColor: AppColors.background,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25),
                  ),
                ),
                builder: (context) => FilterContainer(
                  catalogueBloc: _catalogueBloc,
                ),
              );
            },
            icon: const $AssetsIconsGen().filter.svg(color: AppColors.black),
            color: AppColors.black,
          ),
        ],
      ),
      body: BlocSelector<CatalogueBloc, CatalogueState, List<Doctor>?>(
        bloc: _catalogueBloc,
        selector: (state) => state.doctors,
        builder: (context, doctors) {
          return doctors == null
              ? const Center(
                  child: SizedBox.square(
                    dimension: 24,
                    child: CircularProgressIndicator(),
                  ),
                )
              : ListView.builder(
                  itemCount: doctors.length,
                  itemBuilder: (context, index) =>
                      DoctorContainer(doctor: doctors[index]),
                );
        },
      ),
    );
  }
}
