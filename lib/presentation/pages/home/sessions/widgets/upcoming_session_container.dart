import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import 'package:mint_app/data/models/session.dart';
import 'package:mint_app/presentation/bloc/sessions/bloc/sessions_bloc.dart';
import 'package:mint_app/routes/app_router.gr.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class UpcomingSessionContainer extends StatelessWidget {
  const UpcomingSessionContainer({
    required this.session,
    required this.sessionsBloc,
    super.key,
  });
  final Session session;
  final SessionsBloc sessionsBloc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(WaitingConsultationRoute(
          session: session,
          sessionsBloc: sessionsBloc,
        ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.w),
        ),
        child: Row(
          children: [
            Container(
              height: 39.h,
              width: 39.w,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(10.w),
              ),
              child: session.doctor.profileImage.isNotEmpty
                  ? Image.network(
                      session.doctor.profileImage,
                      fit: BoxFit.contain,
                    )
                  : const SizedBox.shrink(),
            ),
            SizedBox(
              width: 15.w,
            ),
            Expanded(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        session.doctor.name,
                        style: AppTextStyles.boldNormal,
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        '${DateFormat('MMM d, yyyy').format(session.bookedDateTime)}, ${DateFormat('HH:mm').format(session.bookedDateTime)}',
                        style: AppTextStyles.regularTextGrey.copyWith(
                          fontSize: 13.h,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textGrey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
