// ignore_for_file: deprecated_member_use_from_same_package

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/backbone/dependency_injection.dart' as di;
import 'package:mint_app/gen/assets.gen.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/call/bloc/call_bloc.dart';
import 'package:mint_app/presentation/bloc/notifications/bloc/notifications_bloc.dart';
import 'package:mint_app/presentation/bloc/status.dart';
import 'package:mint_app/routes/app_router.gr.dart';
import 'package:mint_app/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CallBloc _callBloc = di.sl.get();
    final NotificationsBloc _notificationsBloc = di.sl.get();
    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
    final AppLocalizations l10n = context.l10n;

    return SafeArea(
      child: MultiBlocListener(
        listeners: [
          BlocListener<NotificationsBloc, NotificationsState>(
            bloc: _notificationsBloc,
            listener: (context, state) {
              if (state.status == BlocStatus.loaded) {
                const AndroidNotificationDetails
                    androidPlatformChannelSpecifics =
                    const AndroidNotificationDetails(
                  'Mint app',
                  '',
                  playSound: true,
                  enableVibration: true,
                  importance: Importance.max,
                  priority: Priority.high,
                );
                const DarwinNotificationDetails iOSPlatformChannelSpecifics =
                    const DarwinNotificationDetails();
                const NotificationDetails platformChannelSpecifics =
                    const NotificationDetails(
                  android: androidPlatformChannelSpecifics,
                  iOS: iOSPlatformChannelSpecifics,
                );
                flutterLocalNotificationsPlugin.show(
                  0,
                  state.notification?.notification?.title,
                  state.notification?.notification?.body,
                  platformChannelSpecifics,
                  payload: null,
                );
              }
            },
          ),
          BlocListener<CallBloc, CallState>(
            bloc: _callBloc,
            listener: (context, state) {
              if (state.callStatus == CallStatus.end) {
                context.router.topRoute;
                context.router.popUntilRoot();
              }
              if (state.callStatus == CallStatus.incomeCall) {
                context.router.push(CallingRoute(isCaller: false));
              }
              ;
            },
          ),
        ],
        child: AutoTabsScaffold(
          routes: const [
            MainRouter(),
            SpecialistsRouter(),
            SessionsRoute(),
            ProfileRouter(),
          ],
          bottomNavigationBuilder: (_, tabsRouter) {
            return SizedBox(
              height: 90.h,
              child: BottomNavigationBar(
                showSelectedLabels: true,
                showUnselectedLabels: true,
                type: BottomNavigationBarType.fixed,
                elevation: 0,
                currentIndex: tabsRouter.activeIndex,
                onTap: tabsRouter.setActiveIndex,
                selectedItemColor: AppColors.blue,
                unselectedItemColor: AppColors.iconGrey,
                items: [
                  BottomNavigationBarItem(
                    label: l10n.home,
                    icon: const $AssetsIconsGen()
                        .home
                        .svg(color: AppColors.iconGrey),
                    activeIcon:
                        const $AssetsIconsGen().home.svg(color: AppColors.blue),
                  ),
                  BottomNavigationBarItem(
                    label: l10n.specialists,
                    icon: const $AssetsIconsGen()
                        .specialist
                        .svg(color: AppColors.iconGrey),
                    activeIcon: const $AssetsIconsGen()
                        .specialist
                        .svg(color: AppColors.blue),
                  ),
                  BottomNavigationBarItem(
                    label: l10n.sessions,
                    icon: const $AssetsIconsGen()
                        .sessions
                        .svg(color: AppColors.iconGrey),
                    activeIcon: const $AssetsIconsGen()
                        .sessions
                        .svg(color: AppColors.blue),
                  ),
                  BottomNavigationBarItem(
                    label: l10n.profile,
                    icon: const $AssetsIconsGen()
                        .profile
                        .svg(color: AppColors.iconGrey),
                    activeIcon: const $AssetsIconsGen()
                        .profile
                        .svg(color: AppColors.blue),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
