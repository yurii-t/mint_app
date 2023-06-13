import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/backbone/dependency_injection.dart' as di;
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/main/bloc/main_bloc.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class SymptomPage extends StatefulWidget {
  const SymptomPage({super.key});

  @override
  State<SymptomPage> createState() => _SymptomPageState();
}

class _SymptomPageState extends State<SymptomPage> {
  final MainBloc _mainBloc = di.sl.get();

  List<String> selectedSymptoms = [];
  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    final List<String> symptoms = [
      l10n.myCondition,
      l10n.stress,
      l10n.panicAttack,
      l10n.lowSelfEsteem,
      l10n.anxiety,
      l10n.powerless,
      l10n.moodSwing,
      l10n.relationship,
      l10n.withPartner,
      l10n.withChildren,
      l10n.sexual,
      l10n.withParents,
      l10n.withOthers,
      l10n.orientation,
      l10n.studyAndWork,
      l10n.burnout,
      l10n.procrastination,
      l10n.noGoal,
      l10n.lackOfMotivation,
      l10n.jobLose,
    ];

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.background,
        leading: IconButton(
          onPressed: () {
            context.router.pop();
          },
          icon: const Icon(
            Icons.chevron_left,
            color: AppColors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 25),
        child: Stack(
          children: [
            ListView.builder(
              itemCount: symptoms.length,
              itemBuilder: (context, index) {
                if (symptoms[index].startsWith('*')) {
                  return Text(
                    symptoms[index].substring(1),
                    style: AppTextStyles.boldNormal.copyWith(fontSize: 20.h),
                  );
                }

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (selectedSymptoms.contains(symptoms[index])) {
                        selectedSymptoms.remove(symptoms[index]);
                      } else {
                        selectedSymptoms.add(symptoms[index]);
                      }
                    });
                  },
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 1.5,
                        child: Checkbox(
                          side:
                              const BorderSide(width: 9, color: AppColors.grey),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                            (states) {
                              if (states.contains(MaterialState.selected)) {
                                return AppColors.blue;
                              }

                              return AppColors.iconGrey;
                            },
                          ),
                          value: selectedSymptoms.contains(symptoms[index]),
                          onChanged: (value) {
                            setState(() {
                              if (selectedSymptoms.contains(symptoms[index])) {
                                selectedSymptoms.remove(symptoms[index]);
                              } else {
                                selectedSymptoms.add(symptoms[index]);
                              }
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        symptoms[index],
                        style: AppTextStyles.regularText,
                      ),
                    ],
                  ),
                );
              },
            ),
            if (selectedSymptoms.isNotEmpty)
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  ),
                  child: Text(l10n.next),
                  onPressed: () {
                    _mainBloc.add(MainEvent.getDoctorsBySymptoms(
                      selectedSymptoms: selectedSymptoms,
                    ));
                    context.router.pop();
                  },
                ),
              )
            else
              const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
