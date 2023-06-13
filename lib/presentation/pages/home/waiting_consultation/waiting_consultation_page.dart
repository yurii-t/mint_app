import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/data/models/session.dart';
import 'package:mint_app/gen/assets.gen.dart';
import 'package:mint_app/l10n/l10n.dart';

import 'package:mint_app/presentation/bloc/sessions/bloc/sessions_bloc.dart';
import 'package:mint_app/presentation/pages/home/doctor/widgets/doctor_calendar.dart';
import 'package:mint_app/presentation/pages/home/doctor/widgets/rate_container.dart';
import 'package:mint_app/presentation/pages/home/sessions/widgets/booked_doctor_container.dart';
import 'package:mint_app/routes/app_router.gr.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class WaitingConsultationPage extends StatelessWidget {
  const WaitingConsultationPage({
    required this.session,
    required this.sessionsBloc,
    super.key,
  });
  final Session session;
  final SessionsBloc sessionsBloc;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.background,
        leadingWidth: 86,
        leading: IconButton(
          onPressed: context.router.pop,
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
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BookedDoctorContainer(
              doctor: session.doctor,
              bookedDateTime: session.bookedDateTime,
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.w),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    l10n.notesForSession,
                    style: AppTextStyles.boldNormal,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    session.notes,
                    style: AppTextStyles.regularText,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.w),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.router.push(CallingRoute());
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const $AssetsIconsGen().call.svg(),
                        SizedBox(
                          width: 4.h,
                        ),
                        Text(l10n.call, style: AppTextStyles.regularText),
                      ],
                    ),
                  ),
                  Container(
                    height: 28,
                    margin: const EdgeInsets.only(
                      right: 16,
                      left: 16,
                    ),
                    width: 1,
                    color: AppColors.grey,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.router.push(CallingRoute());
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const $AssetsIconsGen().video.svg(),
                        SizedBox(
                          width: 4.h,
                        ),
                        Text(l10n.video, style: AppTextStyles.regularText),
                      ],
                    ),
                  ),
                  Container(
                    height: 28,
                    margin: const EdgeInsets.only(
                      right: 16,
                      left: 16,
                    ),
                    width: 1,
                    color: AppColors.grey,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.router.push(const ChatRoute());
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const $AssetsIconsGen().chat.svg(),
                        SizedBox(
                          width: 4.h,
                        ),
                        Text(l10n.chat, style: AppTextStyles.regularText),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      l10n.reschedule,
                      style: AppTextStyles.regularText
                          .copyWith(color: Colors.white, fontSize: 15.sp),
                    ),
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
                          doctor: session.doctor,
                          session: session,
                          sessionsBloc: sessionsBloc,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 9.w,
                ),
                if (session.bookedDateTime.millisecondsSinceEpoch >=
                    DateTime.now().millisecondsSinceEpoch)
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      fixedSize: const Size(80, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      l10n.rate,
                      style: AppTextStyles.regularText
                          .copyWith(color: Colors.white, fontSize: 15.sp),
                    ),
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
                        builder: (context) => RateConatiner(
                          doctorId: session.doctor.id,
                          sessionsBloc: sessionsBloc,
                        ),
                      );
                    },
                  )
                else
                  const SizedBox.shrink(),
                SizedBox(
                  width: 9.w,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(color: AppColors.blue),
                      ),
                      fixedSize: Size(MediaQuery.of(context).size.width, 50),
                    ),
                    child: Text(
                      l10n.cancel,
                      style:
                          AppTextStyles.regularText.copyWith(fontSize: 15.sp),
                    ),
                    onPressed: () {
                      showCupertinoDialog<Widget>(
                        context: context,
                        builder: (_) => CupertinoAlertDialog(
                          title: Text(l10n.sessionCancelation),
                          content: Text(
                            l10n.areYouSureToCancelThisMeeting,
                          ),
                          actions: [
                            CupertinoButton(
                              child: Text(l10n.yes),
                              onPressed: () {
                                sessionsBloc.add(SessionsEvent.cancelSession(
                                  session: session,
                                ));
                                context.router.popUntilRoot();
                              },
                            ),
                            CupertinoButton(
                              child: Text(l10n.no),
                              onPressed: () {
                                context.router.pop();
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
