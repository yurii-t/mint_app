//ignore_for_file: long-method
//ignore_for_file: avoid-returning-widgets
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/backbone/dependency_injection.dart' as di;
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/main/bloc/main_bloc.dart';
import 'package:mint_app/presentation/pages/home/doctor_filter/widgets/communication_with_therapist_column.dart';
import 'package:mint_app/presentation/pages/home/doctor_filter/widgets/match_right_therapist.dart';
import 'package:mint_app/presentation/pages/home/doctor_filter/widgets/pay_for_session.dart';
import 'package:mint_app/presentation/pages/home/doctor_filter/widgets/therapy_before_column.dart';
import 'package:mint_app/theme/app_colors.dart';

class DoctorFilterPage extends StatefulWidget {
  const DoctorFilterPage({super.key});

  @override
  State<DoctorFilterPage> createState() => _DoctorFilterPageState();
}

class _DoctorFilterPageState extends State<DoctorFilterPage> {
  final MainBloc _mainBloc = di.sl.get();
  String communicationValue = '';

  String therapyBeforeValue = '';

  String priceValue = '';

  List<String> selectedProblems = [];

  final _pageController = PageController();

  final activeStep = ValueNotifier<int>(0);

  final int dotCount = 4;

  @override
  void dispose() {
    _pageController.dispose();
    activeStep.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

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
        child: Column(
          children: [
            ValueListenableBuilder(
              valueListenable: activeStep,
              builder: (context, activeStepValue, child) {
                return Row(
                  children: [
                    for (var i = 0; i < dotCount; i++)
                      Expanded(
                        child: AnimatedContainer(
                          height: 5,
                          margin: EdgeInsets.only(
                            right: i < dotCount - 1 ? 8 : 0,
                          ),
                          decoration: BoxDecoration(
                            color: i == activeStepValue
                                ? AppColors.blue
                                : AppColors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          duration: const Duration(milliseconds: 150),
                        ),
                      ),
                  ],
                );
              },
            ),
            SizedBox(
              height: 24.h,
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                children: [
                  CommunicationWithTherapistColumn(
                    communicationValues: (newCommunicationValue) =>
                        communicationValue = newCommunicationValue,
                  ),
                  TherapyBeforeColumn(
                    therapyBeforeValue: (newTherapyBeforeValue) =>
                        therapyBeforeValue = newTherapyBeforeValue,
                  ),
                  PayForSessionColumn(
                    priceValue: (newPriceValue) => priceValue = newPriceValue,
                  ),
                  MatchRightTherapistWrap(
                    selectedProblems: (newSelectedProblems) =>
                        selectedProblems = newSelectedProblems,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width, 50),
              ),
              child: Text(l10n.next),
              onPressed: () {
                bool validated = false;
                if (activeStep.value < dotCount) {
                  if (activeStep.value == 0 && communicationValue.isNotEmpty) {
                    validated = true;
                  } else if (activeStep.value == 1 &&
                      therapyBeforeValue.isNotEmpty) {
                    validated = true;
                  } else if (activeStep.value == 2 && priceValue.isNotEmpty) {
                    validated = true;
                  } else if (activeStep.value == 3 &&
                      selectedProblems.isNotEmpty) {
                    validated = true;
                    _mainBloc.add(MainEvent.getDoctorsMatching(
                      communicationValue: communicationValue,
                      therapyBeforeValue: therapyBeforeValue,
                      priceValue: priceValue,
                      selectedProblems: selectedProblems,
                    ));
                    context.router.pop();
                  }

                  if (validated) {
                    activeStep.value++;
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Center(child: Text(l10n.pleaseSelectOption)),
                      ),
                    );
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
