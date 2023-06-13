import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/data/data.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/pages/home/doctor/widgets/docotor_info.dart';
import 'package:mint_app/presentation/pages/home/doctor/widgets/doctor_calendar.dart';
import 'package:mint_app/presentation/pages/home/doctor/widgets/doctor_tabs.dart';
import 'package:mint_app/presentation/pages/home/main/widgets/like_button.dart';
import 'package:mint_app/theme/app_colors.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({required this.doctor, super.key});

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.zero,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                    ),
                    height: 322.h,
                    decoration: const BoxDecoration(
                      color: AppColors.grey,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Image.network(doctor.profileImage),
                  ),
                  Positioned(
                    top: 42.h,
                    child: Container(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.router.pop();
                            },
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.chevron_left,
                                  color: Colors.black,
                                ),
                                Text(l10n.backButton),
                              ],
                            ),
                          ),
                          const Spacer(),
                          LikeButton(
                            doctor: doctor,
                            isSettings: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              DoctorInfo(doctor: doctor),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 400,
                child: DoctorTabs(
                  doctor: doctor,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 10,
            right: 10,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width, 50),
              ),
              child: Text(l10n.book),
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
                  builder: (context) => DocotorCalendar(
                    doctor: doctor,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
