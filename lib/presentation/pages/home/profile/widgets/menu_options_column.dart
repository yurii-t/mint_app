// ignore_for_file: deprecated_member_use_from_same_package

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/backbone/dependency_injection.dart' as di;
import 'package:mint_app/data/data.dart';
import 'package:mint_app/gen/assets.gen.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/auth_status/auth_status_bloc.dart';

import 'package:mint_app/presentation/pages/home/profile/widgets/option_container.dart';
import 'package:mint_app/routes/app_router.gr.dart';
import 'package:mint_app/theme/app_colors.dart';

class MenuOptionsColumn extends StatelessWidget {
  const MenuOptionsColumn({
    required this.onNextPage,
    required this.paymentCards,
    super.key,
  });
  final VoidCallback onNextPage;

  final List<PaymentMethod> paymentCards;

  @override
  Widget build(BuildContext context) {
    final AuthStatusBloc _authStatusBloc = di.sl.get();
    final AppLocalizations l10n = context.l10n;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.fromLTRB(16.w, 10.h, 16.w, 12.h),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.w),
          ),
          child: Column(
            children: [
              OptionContainer(
                onTap: onNextPage,
                icon: const $AssetsIconsGen()
                    .personalData
                    .svg(color: AppColors.black),
                text: l10n.personalData,
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.zero,
              ),
              SizedBox(
                height: 10.h,
              ),
              const Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 10.h,
              ),
              OptionContainer(
                onTap: () {
                  context.router
                      .push(AppPinRoute(isSignIn: false, isSettings: true));
                },
                icon: const $AssetsIconsGen().lock.svg(color: AppColors.black),
                text: l10n.changePincode,
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.zero,
              ),
            ],
          ),
        ),
        OptionContainer(
          onTap: () {
            context.router.push(const CreditCardsRoute());
          },
          icon: const $AssetsIconsGen().cards.svg(color: AppColors.black),
          text: l10n.myCreditCards,
          margin: EdgeInsets.fromLTRB(16.w, 10.h, 16.w, 4.h),
        ),
        OptionContainer(
          onTap: () {
            context.router.push(const FavoriteRoute());
          },
          icon: const $AssetsIconsGen().favorite.svg(color: AppColors.black),
          text: l10n.favouriteDoctors,
          margin: EdgeInsets.fromLTRB(16.w, 10.h, 16.w, 4.h),
        ),
        OptionContainer(
          onTap: () {
            context.router.push(const NotificaationRoute());
          },
          icon: const $AssetsIconsGen().bell.svg(color: AppColors.black),
          text: l10n.notifications,
          margin: EdgeInsets.fromLTRB(16.w, 4.h, 16.w, 4.h),
        ),
        SizedBox(
          height: 15.h,
        ),
        OptionContainer(
          onTap: () {
            _authStatusBloc.add(const AuthStatusEvent.logedOut());
          },
          icon: const $AssetsIconsGen().exit.svg(color: AppColors.red),
          text: l10n.logout,
          margin: EdgeInsets.fromLTRB(16.w, 4.h, 16.w, 4.h),
          isChevronIconActice: false,
          textColor: Colors.red,
        ),
      ],
    );
  }
}
