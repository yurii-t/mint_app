import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class MatchRightTherapistWrap extends StatefulWidget {
  const MatchRightTherapistWrap({required this.selectedProblems, Key? key})
      : super(key: key);
  final Function(List<String>) selectedProblems;
  @override
  State<MatchRightTherapistWrap> createState() =>
      MatchRightTherapistWrapState();
}

class MatchRightTherapistWrapState extends State<MatchRightTherapistWrap> {
  final selectedProblems = ValueNotifier<List<String>>([]);

  @override
  void dispose() {
    selectedProblems.value;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    final therapyProblems = <String>[
      l10n.fears,
      l10n.problemsWithSelfControl,
      l10n.relationshipsWithOneself,
      l10n.emotions,
      l10n.myDevelopment,
      l10n.relationshipWithChildren,
      l10n.career,
      l10n.finances,
      l10n.future,
      l10n.physicalCondition,
      l10n.lackOfRelationship,
      l10n.lifeChanges,
      l10n.relationshipWithMyPartner,
      l10n.myPast,
      l10n.relationshipWithMyParents,
    ];

    return Column(
      children: [
        Text(
          l10n.helpUsMatch,
          style: AppTextStyles.boldNormal.copyWith(fontSize: 20),
        ),
        SizedBox(
          height: 16.h,
        ),
        Wrap(
          spacing: 4,
          children: [
            for (final problem in therapyProblems)
              GestureDetector(
                onTap: () {
                  if (selectedProblems.value.contains(problem))
                    selectedProblems.value = List.from(selectedProblems.value)
                      ..remove(problem);

                  selectedProblems.value = List.from(selectedProblems.value)
                    ..add(problem);

                  widget.selectedProblems(selectedProblems.value);
                },
                child: ValueListenableBuilder(
                  valueListenable: selectedProblems,
                  builder: (context, selectedProblemsValue, child) {
                    return Chip(
                      label: Text(
                        problem,
                        style:
                            AppTextStyles.regularText.copyWith(fontSize: 15.h),
                      ),
                      backgroundColor: AppColors.white,
                      side: selectedProblemsValue.contains(problem)
                          ? const BorderSide(color: AppColors.blue)
                          : null,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ],
    );
  }
}
