import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/backbone/dependency_injection.dart' as di;
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/auth_status/auth_status_bloc.dart';
import 'package:mint_app/presentation/bloc/notifications/bloc/notifications_bloc.dart';
import 'package:mint_app/presentation/bloc/status.dart';
import 'package:mint_app/routes/app_router.gr.dart';

class App extends StatelessWidget {
  App({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    final AuthStatusBloc authBloc = di.sl.get();
    final NotificationsBloc notificationsBloc = di.sl.get();

    return ScreenUtilInit(
      builder: (context, child) => MaterialApp.router(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
          colorScheme: ColorScheme.fromSwatch(
            accentColor: const Color(0xFF13B9FF),
          ),
        ),
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        title: 'Mint',
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        builder: (context, child) {
          return BlocListener<AuthStatusBloc, AuthStatusState>(
            bloc: authBloc,
            listener: (context, state) {
              if (state.status == BlocStatus.loaded) {
                final isLogedOut = state.isLogedOut;
                if (isLogedOut != null) {
                  if (!isLogedOut) {
                    notificationsBloc.add(
                        const NotificationsEvent.updateNotificationToken(),);
                    state.isRegistration == false
                        ? _appRouter.replace(AppPinRoute(isSignIn: true))
                        : _appRouter.replace(AppPinRoute(isSignIn: false));
                  } else {
                    _appRouter.replace(const SignUpRoute());
                  }
                }
              }
            },
            child: child,
          );
        },
      ),
    );
  }
}
