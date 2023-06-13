import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:mint_app/presentation/pages/app_pin/app_pin_page.dart';
import 'package:mint_app/presentation/pages/credit_cards/credit_cards_page.dart';
import 'package:mint_app/presentation/pages/favorite/favorite_page.dart';
import 'package:mint_app/presentation/pages/home/call/calling_page.dart';
import 'package:mint_app/presentation/pages/home/chat/chat_page.dart';
import 'package:mint_app/presentation/pages/home/checkout/checkout_page.dart';
import 'package:mint_app/presentation/pages/home/confirm_booking/confirm_booking_page.dart';
import 'package:mint_app/presentation/pages/home/doctor/doctor_page.dart';
import 'package:mint_app/presentation/pages/home/doctor/widgets/thank_you_page.dart';
import 'package:mint_app/presentation/pages/home/doctor_filter/doctor_filter_page.dart';
import 'package:mint_app/presentation/pages/home/home_page.dart';
import 'package:mint_app/presentation/pages/home/main/main_page.dart';
import 'package:mint_app/presentation/pages/home/payment/payment_page.dart';
import 'package:mint_app/presentation/pages/home/profile/profile_page.dart';
import 'package:mint_app/presentation/pages/home/sessions/sessions_page.dart';
import 'package:mint_app/presentation/pages/home/specialists/specialists_page.dart';
import 'package:mint_app/presentation/pages/home/symptom/symptom_page.dart';
import 'package:mint_app/presentation/pages/home/waiting_consultation/waiting_consultation_page.dart';
import 'package:mint_app/presentation/pages/notification/notification_page.dart';
import 'package:mint_app/presentation/pages/sign_up/enter_pin_page.dart';
import 'package:mint_app/presentation/pages/sign_up/sign_up_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<void>(
      page: SignUpPage,
      initial: true,
    ),
    AutoRoute<void>(
      page: EnterPinPage,
    ),
    AutoRoute<void>(
      page: AppPinPage,
    ),
    AutoRoute<void>(
      page: ConfirmBookingPage,
    ),
    AutoRoute<void>(
      page: HomePage,
      children: [
        AutoRoute<void>(
          path: 'main',
          name: 'MainRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute<void>(
              path: '',
              page: MainPage,
            ),
            AutoRoute<void>(
              page: DoctorPage,
            ),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute<void>(
          path: 'main',
          name: 'SpecialistsRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute<void>(
              path: '',
              page: SpecialistsPage,
            ),
            AutoRoute<void>(
              page: DoctorPage,
            ),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute<void>(
          page: SessionsPage,
        ),
        AutoRoute<void>(
          path: 'profle',
          name: 'ProfileRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute<void>(
              path: '',
              page: ProfilePage,
            ),
            AutoRoute<void>(
              page: FavoritePage,
            ),
            AutoRoute<void>(
              page: NotificaationPage,
            ),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
      ],
    ),
    AutoRoute<void>(
      page: DoctorFilterPage,
    ),
    AutoRoute<void>(
      page: SymptomPage,
    ),
    AutoRoute<void>(
      page: CheckoutPage,
    ),
    AutoRoute<void>(
      page: PaymentPage,
    ),
    AutoRoute<void>(
      page: WaitingConsultationPage,
    ),
    AutoRoute<void>(
      page: CallingPage,
    ),
    AutoRoute<void>(
      page: ChatPage,
    ),
    AutoRoute<void>(
      page: ThankYouPage,
    ),
    AutoRoute<void>(
      page: CreditCardsPage,
    ),
  ],
)
class $AppRouter {}
