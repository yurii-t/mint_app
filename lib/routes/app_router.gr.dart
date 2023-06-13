// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i23;
import 'package:auto_route/empty_router_widgets.dart' as _i15;
import 'package:flutter/cupertino.dart' as _i25;
import 'package:flutter/material.dart' as _i24;

import '../data/data.dart' as _i26;
import '../data/models/session.dart' as _i27;
import '../presentation/bloc/sessions/bloc/sessions_bloc.dart' as _i28;
import '../presentation/pages/app_pin/app_pin_page.dart' as _i3;
import '../presentation/pages/credit_cards/credit_cards_page.dart' as _i14;
import '../presentation/pages/favorite/favorite_page.dart' as _i21;
import '../presentation/pages/home/call/calling_page.dart' as _i11;
import '../presentation/pages/home/chat/chat_page.dart' as _i12;
import '../presentation/pages/home/checkout/checkout_page.dart' as _i8;
import '../presentation/pages/home/confirm_booking/confirm_booking_page.dart'
    as _i4;
import '../presentation/pages/home/doctor/doctor_page.dart' as _i18;
import '../presentation/pages/home/doctor/widgets/thank_you_page.dart' as _i13;
import '../presentation/pages/home/doctor_filter/doctor_filter_page.dart'
    as _i6;
import '../presentation/pages/home/home_page.dart' as _i5;
import '../presentation/pages/home/main/main_page.dart' as _i17;
import '../presentation/pages/home/payment/payment_page.dart' as _i9;
import '../presentation/pages/home/profile/profile_page.dart' as _i20;
import '../presentation/pages/home/sessions/sessions_page.dart' as _i16;
import '../presentation/pages/home/specialists/specialists_page.dart' as _i19;
import '../presentation/pages/home/symptom/symptom_page.dart' as _i7;
import '../presentation/pages/home/waiting_consultation/waiting_consultation_page.dart'
    as _i10;
import '../presentation/pages/notification/notification_page.dart' as _i22;
import '../presentation/pages/sign_up/enter_pin_page.dart' as _i2;
import '../presentation/pages/sign_up/sign_up_page.dart' as _i1;

class AppRouter extends _i23.RootStackRouter {
  AppRouter([_i24.GlobalKey<_i24.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i23.PageFactory> pagesMap = {
    SignUpRoute.name: (routeData) {
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: const _i1.SignUpPage(),
      );
    },
    EnterPinRoute.name: (routeData) {
      final args = routeData.argsAs<EnterPinRouteArgs>();
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: _i2.EnterPinPage(
          verId: args.verId,
          isRegistration: args.isRegistration,
          phoneNumber: args.phoneNumber,
          key: args.key,
        ),
      );
    },
    AppPinRoute.name: (routeData) {
      final args = routeData.argsAs<AppPinRouteArgs>();
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: _i3.AppPinPage(
          isSignIn: args.isSignIn,
          isSettings: args.isSettings,
          key: args.key,
        ),
      );
    },
    ConfirmBookingRoute.name: (routeData) {
      final args = routeData.argsAs<ConfirmBookingRouteArgs>();
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: _i4.ConfirmBookingPage(
          doctor: args.doctor,
          bookedDateTime: args.bookedDateTime,
          key: args.key,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    DoctorFilterRoute.name: (routeData) {
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: const _i6.DoctorFilterPage(),
      );
    },
    SymptomRoute.name: (routeData) {
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: const _i7.SymptomPage(),
      );
    },
    CheckoutRoute.name: (routeData) {
      final args = routeData.argsAs<CheckoutRouteArgs>();
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: _i8.CheckoutPage(
          doctor: args.doctor,
          bookedDateTime: args.bookedDateTime,
          notes: args.notes,
          key: args.key,
        ),
      );
    },
    PaymentRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentRouteArgs>();
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: _i9.PaymentPage(
          doctor: args.doctor,
          bookedDateTime: args.bookedDateTime,
          notes: args.notes,
          key: args.key,
        ),
      );
    },
    WaitingConsultationRoute.name: (routeData) {
      final args = routeData.argsAs<WaitingConsultationRouteArgs>();
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: _i10.WaitingConsultationPage(
          session: args.session,
          sessionsBloc: args.sessionsBloc,
          key: args.key,
        ),
      );
    },
    CallingRoute.name: (routeData) {
      final args = routeData.argsAs<CallingRouteArgs>(
          orElse: () => const CallingRouteArgs());
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: _i11.CallingPage(
          isCaller: args.isCaller,
          key: args.key,
        ),
      );
    },
    ChatRoute.name: (routeData) {
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: const _i12.ChatPage(),
      );
    },
    ThankYouRoute.name: (routeData) {
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: const _i13.ThankYouPage(),
      );
    },
    CreditCardsRoute.name: (routeData) {
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: const _i14.CreditCardsPage(),
      );
    },
    MainRouter.name: (routeData) {
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: const _i15.EmptyRouterPage(),
      );
    },
    SpecialistsRouter.name: (routeData) {
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: const _i15.EmptyRouterPage(),
      );
    },
    SessionsRoute.name: (routeData) {
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: const _i16.SessionsPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: const _i15.EmptyRouterPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: const _i17.MainPage(),
      );
    },
    DoctorRoute.name: (routeData) {
      final args = routeData.argsAs<DoctorRouteArgs>();
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: _i18.DoctorPage(
          doctor: args.doctor,
          key: args.key,
        ),
      );
    },
    SpecialistsRoute.name: (routeData) {
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: const _i19.SpecialistsPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: const _i20.ProfilePage(),
      );
    },
    FavoriteRoute.name: (routeData) {
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: const _i21.FavoritePage(),
      );
    },
    NotificaationRoute.name: (routeData) {
      return _i23.MaterialPageX<void>(
        routeData: routeData,
        child: const _i22.NotificaationPage(),
      );
    },
  };

  @override
  List<_i23.RouteConfig> get routes => [
        _i23.RouteConfig(
          SignUpRoute.name,
          path: '/',
        ),
        _i23.RouteConfig(
          EnterPinRoute.name,
          path: '/enter-pin-page',
        ),
        _i23.RouteConfig(
          AppPinRoute.name,
          path: '/app-pin-page',
        ),
        _i23.RouteConfig(
          ConfirmBookingRoute.name,
          path: '/confirm-booking-page',
        ),
        _i23.RouteConfig(
          HomeRoute.name,
          path: '/home-page',
          children: [
            _i23.RouteConfig(
              MainRouter.name,
              path: 'main',
              parent: HomeRoute.name,
              children: [
                _i23.RouteConfig(
                  MainRoute.name,
                  path: '',
                  parent: MainRouter.name,
                ),
                _i23.RouteConfig(
                  DoctorRoute.name,
                  path: 'doctor-page',
                  parent: MainRouter.name,
                ),
                _i23.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: MainRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i23.RouteConfig(
              SpecialistsRouter.name,
              path: 'main',
              parent: HomeRoute.name,
              children: [
                _i23.RouteConfig(
                  SpecialistsRoute.name,
                  path: '',
                  parent: SpecialistsRouter.name,
                ),
                _i23.RouteConfig(
                  DoctorRoute.name,
                  path: 'doctor-page',
                  parent: SpecialistsRouter.name,
                ),
                _i23.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: SpecialistsRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i23.RouteConfig(
              SessionsRoute.name,
              path: 'sessions-page',
              parent: HomeRoute.name,
            ),
            _i23.RouteConfig(
              ProfileRouter.name,
              path: 'profle',
              parent: HomeRoute.name,
              children: [
                _i23.RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: ProfileRouter.name,
                ),
                _i23.RouteConfig(
                  FavoriteRoute.name,
                  path: 'favorite-page',
                  parent: ProfileRouter.name,
                ),
                _i23.RouteConfig(
                  NotificaationRoute.name,
                  path: 'notificaation-page',
                  parent: ProfileRouter.name,
                ),
                _i23.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: ProfileRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
          ],
        ),
        _i23.RouteConfig(
          DoctorFilterRoute.name,
          path: '/doctor-filter-page',
        ),
        _i23.RouteConfig(
          SymptomRoute.name,
          path: '/symptom-page',
        ),
        _i23.RouteConfig(
          CheckoutRoute.name,
          path: '/checkout-page',
        ),
        _i23.RouteConfig(
          PaymentRoute.name,
          path: '/payment-page',
        ),
        _i23.RouteConfig(
          WaitingConsultationRoute.name,
          path: '/waiting-consultation-page',
        ),
        _i23.RouteConfig(
          CallingRoute.name,
          path: '/calling-page',
        ),
        _i23.RouteConfig(
          ChatRoute.name,
          path: '/chat-page',
        ),
        _i23.RouteConfig(
          ThankYouRoute.name,
          path: '/thank-you-page',
        ),
        _i23.RouteConfig(
          CreditCardsRoute.name,
          path: '/credit-cards-page',
        ),
      ];
}

/// generated route for
/// [_i1.SignUpPage]
class SignUpRoute extends _i23.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i2.EnterPinPage]
class EnterPinRoute extends _i23.PageRouteInfo<EnterPinRouteArgs> {
  EnterPinRoute({
    required String verId,
    required bool isRegistration,
    required String phoneNumber,
    _i25.Key? key,
  }) : super(
          EnterPinRoute.name,
          path: '/enter-pin-page',
          args: EnterPinRouteArgs(
            verId: verId,
            isRegistration: isRegistration,
            phoneNumber: phoneNumber,
            key: key,
          ),
        );

  static const String name = 'EnterPinRoute';
}

class EnterPinRouteArgs {
  const EnterPinRouteArgs({
    required this.verId,
    required this.isRegistration,
    required this.phoneNumber,
    this.key,
  });

  final String verId;

  final bool isRegistration;

  final String phoneNumber;

  final _i25.Key? key;

  @override
  String toString() {
    return 'EnterPinRouteArgs{verId: $verId, isRegistration: $isRegistration, phoneNumber: $phoneNumber, key: $key}';
  }
}

/// generated route for
/// [_i3.AppPinPage]
class AppPinRoute extends _i23.PageRouteInfo<AppPinRouteArgs> {
  AppPinRoute({
    required bool isSignIn,
    bool isSettings = false,
    _i25.Key? key,
  }) : super(
          AppPinRoute.name,
          path: '/app-pin-page',
          args: AppPinRouteArgs(
            isSignIn: isSignIn,
            isSettings: isSettings,
            key: key,
          ),
        );

  static const String name = 'AppPinRoute';
}

class AppPinRouteArgs {
  const AppPinRouteArgs({
    required this.isSignIn,
    this.isSettings = false,
    this.key,
  });

  final bool isSignIn;

  final bool isSettings;

  final _i25.Key? key;

  @override
  String toString() {
    return 'AppPinRouteArgs{isSignIn: $isSignIn, isSettings: $isSettings, key: $key}';
  }
}

/// generated route for
/// [_i4.ConfirmBookingPage]
class ConfirmBookingRoute extends _i23.PageRouteInfo<ConfirmBookingRouteArgs> {
  ConfirmBookingRoute({
    required _i26.Doctor doctor,
    required DateTime bookedDateTime,
    _i25.Key? key,
  }) : super(
          ConfirmBookingRoute.name,
          path: '/confirm-booking-page',
          args: ConfirmBookingRouteArgs(
            doctor: doctor,
            bookedDateTime: bookedDateTime,
            key: key,
          ),
        );

  static const String name = 'ConfirmBookingRoute';
}

class ConfirmBookingRouteArgs {
  const ConfirmBookingRouteArgs({
    required this.doctor,
    required this.bookedDateTime,
    this.key,
  });

  final _i26.Doctor doctor;

  final DateTime bookedDateTime;

  final _i25.Key? key;

  @override
  String toString() {
    return 'ConfirmBookingRouteArgs{doctor: $doctor, bookedDateTime: $bookedDateTime, key: $key}';
  }
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i23.PageRouteInfo<void> {
  const HomeRoute({List<_i23.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/home-page',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i6.DoctorFilterPage]
class DoctorFilterRoute extends _i23.PageRouteInfo<void> {
  const DoctorFilterRoute()
      : super(
          DoctorFilterRoute.name,
          path: '/doctor-filter-page',
        );

  static const String name = 'DoctorFilterRoute';
}

/// generated route for
/// [_i7.SymptomPage]
class SymptomRoute extends _i23.PageRouteInfo<void> {
  const SymptomRoute()
      : super(
          SymptomRoute.name,
          path: '/symptom-page',
        );

  static const String name = 'SymptomRoute';
}

/// generated route for
/// [_i8.CheckoutPage]
class CheckoutRoute extends _i23.PageRouteInfo<CheckoutRouteArgs> {
  CheckoutRoute({
    required _i26.Doctor doctor,
    required DateTime bookedDateTime,
    required String notes,
    _i25.Key? key,
  }) : super(
          CheckoutRoute.name,
          path: '/checkout-page',
          args: CheckoutRouteArgs(
            doctor: doctor,
            bookedDateTime: bookedDateTime,
            notes: notes,
            key: key,
          ),
        );

  static const String name = 'CheckoutRoute';
}

class CheckoutRouteArgs {
  const CheckoutRouteArgs({
    required this.doctor,
    required this.bookedDateTime,
    required this.notes,
    this.key,
  });

  final _i26.Doctor doctor;

  final DateTime bookedDateTime;

  final String notes;

  final _i25.Key? key;

  @override
  String toString() {
    return 'CheckoutRouteArgs{doctor: $doctor, bookedDateTime: $bookedDateTime, notes: $notes, key: $key}';
  }
}

/// generated route for
/// [_i9.PaymentPage]
class PaymentRoute extends _i23.PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    required _i26.Doctor doctor,
    required DateTime bookedDateTime,
    required String notes,
    _i25.Key? key,
  }) : super(
          PaymentRoute.name,
          path: '/payment-page',
          args: PaymentRouteArgs(
            doctor: doctor,
            bookedDateTime: bookedDateTime,
            notes: notes,
            key: key,
          ),
        );

  static const String name = 'PaymentRoute';
}

class PaymentRouteArgs {
  const PaymentRouteArgs({
    required this.doctor,
    required this.bookedDateTime,
    required this.notes,
    this.key,
  });

  final _i26.Doctor doctor;

  final DateTime bookedDateTime;

  final String notes;

  final _i25.Key? key;

  @override
  String toString() {
    return 'PaymentRouteArgs{doctor: $doctor, bookedDateTime: $bookedDateTime, notes: $notes, key: $key}';
  }
}

/// generated route for
/// [_i10.WaitingConsultationPage]
class WaitingConsultationRoute
    extends _i23.PageRouteInfo<WaitingConsultationRouteArgs> {
  WaitingConsultationRoute({
    required _i27.Session session,
    required _i28.SessionsBloc sessionsBloc,
    _i25.Key? key,
  }) : super(
          WaitingConsultationRoute.name,
          path: '/waiting-consultation-page',
          args: WaitingConsultationRouteArgs(
            session: session,
            sessionsBloc: sessionsBloc,
            key: key,
          ),
        );

  static const String name = 'WaitingConsultationRoute';
}

class WaitingConsultationRouteArgs {
  const WaitingConsultationRouteArgs({
    required this.session,
    required this.sessionsBloc,
    this.key,
  });

  final _i27.Session session;

  final _i28.SessionsBloc sessionsBloc;

  final _i25.Key? key;

  @override
  String toString() {
    return 'WaitingConsultationRouteArgs{session: $session, sessionsBloc: $sessionsBloc, key: $key}';
  }
}

/// generated route for
/// [_i11.CallingPage]
class CallingRoute extends _i23.PageRouteInfo<CallingRouteArgs> {
  CallingRoute({
    bool isCaller = true,
    _i25.Key? key,
  }) : super(
          CallingRoute.name,
          path: '/calling-page',
          args: CallingRouteArgs(
            isCaller: isCaller,
            key: key,
          ),
        );

  static const String name = 'CallingRoute';
}

class CallingRouteArgs {
  const CallingRouteArgs({
    this.isCaller = true,
    this.key,
  });

  final bool isCaller;

  final _i25.Key? key;

  @override
  String toString() {
    return 'CallingRouteArgs{isCaller: $isCaller, key: $key}';
  }
}

/// generated route for
/// [_i12.ChatPage]
class ChatRoute extends _i23.PageRouteInfo<void> {
  const ChatRoute()
      : super(
          ChatRoute.name,
          path: '/chat-page',
        );

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i13.ThankYouPage]
class ThankYouRoute extends _i23.PageRouteInfo<void> {
  const ThankYouRoute()
      : super(
          ThankYouRoute.name,
          path: '/thank-you-page',
        );

  static const String name = 'ThankYouRoute';
}

/// generated route for
/// [_i14.CreditCardsPage]
class CreditCardsRoute extends _i23.PageRouteInfo<void> {
  const CreditCardsRoute()
      : super(
          CreditCardsRoute.name,
          path: '/credit-cards-page',
        );

  static const String name = 'CreditCardsRoute';
}

/// generated route for
/// [_i15.EmptyRouterPage]
class MainRouter extends _i23.PageRouteInfo<void> {
  const MainRouter({List<_i23.PageRouteInfo>? children})
      : super(
          MainRouter.name,
          path: 'main',
          initialChildren: children,
        );

  static const String name = 'MainRouter';
}

/// generated route for
/// [_i15.EmptyRouterPage]
class SpecialistsRouter extends _i23.PageRouteInfo<void> {
  const SpecialistsRouter({List<_i23.PageRouteInfo>? children})
      : super(
          SpecialistsRouter.name,
          path: 'main',
          initialChildren: children,
        );

  static const String name = 'SpecialistsRouter';
}

/// generated route for
/// [_i16.SessionsPage]
class SessionsRoute extends _i23.PageRouteInfo<void> {
  const SessionsRoute()
      : super(
          SessionsRoute.name,
          path: 'sessions-page',
        );

  static const String name = 'SessionsRoute';
}

/// generated route for
/// [_i15.EmptyRouterPage]
class ProfileRouter extends _i23.PageRouteInfo<void> {
  const ProfileRouter({List<_i23.PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          path: 'profle',
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i17.MainPage]
class MainRoute extends _i23.PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: '',
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i18.DoctorPage]
class DoctorRoute extends _i23.PageRouteInfo<DoctorRouteArgs> {
  DoctorRoute({
    required _i26.Doctor doctor,
    _i25.Key? key,
  }) : super(
          DoctorRoute.name,
          path: 'doctor-page',
          args: DoctorRouteArgs(
            doctor: doctor,
            key: key,
          ),
        );

  static const String name = 'DoctorRoute';
}

class DoctorRouteArgs {
  const DoctorRouteArgs({
    required this.doctor,
    this.key,
  });

  final _i26.Doctor doctor;

  final _i25.Key? key;

  @override
  String toString() {
    return 'DoctorRouteArgs{doctor: $doctor, key: $key}';
  }
}

/// generated route for
/// [_i19.SpecialistsPage]
class SpecialistsRoute extends _i23.PageRouteInfo<void> {
  const SpecialistsRoute()
      : super(
          SpecialistsRoute.name,
          path: '',
        );

  static const String name = 'SpecialistsRoute';
}

/// generated route for
/// [_i20.ProfilePage]
class ProfileRoute extends _i23.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i21.FavoritePage]
class FavoriteRoute extends _i23.PageRouteInfo<void> {
  const FavoriteRoute()
      : super(
          FavoriteRoute.name,
          path: 'favorite-page',
        );

  static const String name = 'FavoriteRoute';
}

/// generated route for
/// [_i22.NotificaationPage]
class NotificaationRoute extends _i23.PageRouteInfo<void> {
  const NotificaationRoute()
      : super(
          NotificaationRoute.name,
          path: 'notificaation-page',
        );

  static const String name = 'NotificaationRoute';
}
