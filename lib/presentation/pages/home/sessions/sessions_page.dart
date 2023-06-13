import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/backbone/dependency_injection.dart' as di;
import 'package:mint_app/data/models/session.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/sessions/bloc/sessions_bloc.dart';
import 'package:mint_app/presentation/bloc/status.dart';
import 'package:mint_app/presentation/pages/home/sessions/widgets/upcoming_session_container.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class SessionsPage extends StatelessWidget {
  const SessionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SessionsBloc _sessionsBloc = di.sl.get();
    final AppLocalizations l10n = context.l10n;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocProvider(
        create: (context) => _sessionsBloc,
        child: DefaultTabController(
          length: 2,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.w),
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: AppColors.blue,
                      borderRadius: BorderRadius.circular(8.w),
                    ),
                    padding: EdgeInsets.zero,
                    labelStyle: AppTextStyles.regularText,
                    labelColor: Colors.white,
                    unselectedLabelColor: AppColors.textGrey,
                    tabs: [
                      Tab(
                        iconMargin: EdgeInsets.zero,
                        child: Text(l10n.upcoming),
                      ),
                      Tab(
                        iconMargin: EdgeInsets.zero,
                        text: l10n.previous,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Builder(
                  builder: (
                    context,
                  ) {
                    final isLoading = context.select<SessionsBloc, bool>(
                      (bloc) => bloc.state.status == BlocStatus.loading,
                    );

                    return isLoading
                        ? const Center(
                            child: SizedBox.square(
                              dimension: 24,
                              child: CircularProgressIndicator(),
                            ),
                          )
                        : Flexible(
                            child: TabBarView(children: [
                              Builder(builder: (context) {
                                final upcomingSessions = context
                                    .select<SessionsBloc, List<Session>?>(
                                  (bloc) => bloc.state.upcomingSessions,
                                );

                                return upcomingSessions != null
                                    ? ListView.builder(
                                        padding: EdgeInsets.zero,
                                        itemCount: upcomingSessions.length,
                                        itemBuilder: (context, index) =>
                                            UpcomingSessionContainer(
                                          session: upcomingSessions[index],
                                          sessionsBloc: _sessionsBloc,
                                        ),
                                      )
                                    : const SizedBox.square(
                                        dimension: 24,
                                        child: CircularProgressIndicator(),
                                      );
                              }),
                              Builder(
                                builder: (context) {
                                  final previousSessions = context
                                      .select<SessionsBloc, List<Session>?>(
                                    (bloc) => bloc.state.previousSessions,
                                  );

                                  return previousSessions != null
                                      ? ListView.builder(
                                          padding: EdgeInsets.zero,
                                          itemCount: previousSessions.length,
                                          itemBuilder: (context, index) =>
                                              UpcomingSessionContainer(
                                            session: previousSessions[index],
                                            sessionsBloc: _sessionsBloc,
                                          ),
                                        )
                                      : const SizedBox.square(
                                          dimension: 24,
                                          child: CircularProgressIndicator(),
                                        );
                                },
                              ),
                            ]),
                          );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
