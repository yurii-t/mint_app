// ignore_for_file: deprecated_member_use_from_same_package

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/backbone/dependency_injection.dart' as di;
import 'package:mint_app/data/models/session.dart';
import 'package:mint_app/gen/assets.gen.dart';
import 'package:mint_app/l10n/l10n.dart';

import 'package:mint_app/presentation/bloc/main/bloc/main_bloc.dart';
import 'package:mint_app/presentation/bloc/sessions/bloc/sessions_bloc.dart';
import 'package:mint_app/presentation/bloc/status.dart';
import 'package:mint_app/presentation/pages/home/main/widgets/doctor_container.dart';
import 'package:mint_app/presentation/pages/home/sessions/widgets/upcoming_session_container.dart';
import 'package:mint_app/routes/app_router.gr.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MainBloc _mainBloc = di.sl.get();
    final SessionsBloc _sessionsBloc = di.sl.get();

    final AppLocalizations l10n = context.l10n;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocBuilder<MainBloc, MainState>(
        bloc: _mainBloc,
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
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: AppColors.background,
                  title: Padding(
                    padding: const EdgeInsets.only(
                      right: 16,
                      left: 16,
                      top: 20,
                      bottom: 5,
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          '@${state.currentUser?.firstName} ${state.currentUser?.lastName}',
                          style: AppTextStyles.regularText,
                        ),
                        const Spacer(),
                        const $AssetsIconsGen()
                            .bell
                            .svg(color: AppColors.iconGrey),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 8.h,
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child:
                            BlocSelector<SessionsBloc, SessionsState, Session?>(
                          bloc: _sessionsBloc,
                          selector: (state) => state.upcomingSession,
                          builder: (context, upcomingSession) {
                            return upcomingSession == null
                                ? const SizedBox.shrink()
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        l10n.upcomingConsultation,
                                        style: AppTextStyles.boldNormal,
                                      ),
                                      SizedBox(
                                        height: 16.h,
                                      ),
                                      UpcomingSessionContainer(
                                        session: upcomingSession,
                                        sessionsBloc: _sessionsBloc,
                                      ),
                                      SizedBox(
                                        height: 24.h,
                                      ),
                                    ],
                                  );
                          },
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                context.router.push(const DoctorFilterRoute());
                              },
                              child: Container(
                                height: 98.h,
                                margin: const EdgeInsets.only(left: 16),
                                padding: EdgeInsets.only(
                                  right: 10.w,
                                  left: 10.w,
                                  top: 15.h,
                                  bottom: 10.h,
                                ),
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  color: AppColors.blue,
                                  borderRadius: BorderRadius.circular(10.w),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const $AssetsIconsGen()
                                        .mask
                                        .svg(width: 27.w, height: 27.h),
                                    const Spacer(),
                                    Text(
                                      l10n.pickUpASpecialist,
                                      style: AppTextStyles.regularTextGrey
                                          .copyWith(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                context.router.push(const SymptomRoute());
                              },
                              child: Container(
                                height: 98.h,
                                margin: const EdgeInsets.only(right: 16),
                                padding: EdgeInsets.only(
                                  right: 10.w,
                                  left: 10.w,
                                  top: 15.h,
                                  bottom: 10.h,
                                ),
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  color: AppColors.violet,
                                  borderRadius: BorderRadius.circular(10.w),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const $AssetsIconsGen()
                                        .dna
                                        .svg(width: 27.w, height: 27.h),
                                    const Spacer(),
                                    Text(
                                      l10n.chooseSymptom,
                                      style: AppTextStyles.regularTextGrey
                                          .copyWith(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          l10n.doctorsOnline,
                          style: AppTextStyles.title.copyWith(fontSize: 24.h),
                        ),
                      ),
                    ],
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) =>
                        DoctorContainer(doctor: state.doctors?[index]),
                    childCount: state.doctors?.length ?? 0,
                  ),
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
