import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:mint_app/backbone/dependency_injection.dart' as di;
import 'package:mint_app/data/data.dart';
import 'package:mint_app/gen/assets.gen.dart';
import 'package:mint_app/l10n/l10n.dart';

import 'package:mint_app/presentation/bloc/user/bloc/user_bloc.dart';
import 'package:mint_app/presentation/pages/home/payment/widgets/card_fields.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class CreditCardsPage extends StatelessWidget {
  const CreditCardsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final UserBloc _userBloc = di.sl.get();
    final AppLocalizations l10n = context.l10n;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.background,
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        backgroundColor: AppColors.background,
        toolbarHeight: 20,
        leadingWidth: 100,
        leading: GestureDetector(
          onTap: () {
            context.router.pop();
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.chevron_left,
                color: Colors.black,
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
        padding:
            const EdgeInsets.only(left: 16, right: 16, bottom: 30, top: 10),
        child: BlocSelector<UserBloc, UserState, List<PaymentMethod>>(
          bloc: _userBloc,
          selector: (state) => state.paymentCards ?? [],
          builder: (context, paymentCards) {
            return Column(
              children: [
                if (paymentCards.isEmpty)
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2.h,
                      ),
                      const Text(
                        '😔',
                        style: TextStyle(fontSize: 70),
                      ),
                      Text(
                        l10n.noPaymentCardsAvailable,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.boldNormal,
                      ),
                    ],
                  )
                else
                  Expanded(
                    child: ListView.builder(
                      itemCount: paymentCards.length,
                      itemBuilder: (context, index) {
                        final latsDigits = paymentCards[index].number.substring(
                              paymentCards[index].number.length - 5,
                            );

                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(
                            top: 5.h,
                            bottom: 5.h,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10.h),
                          ),
                          child: Slidable(
                            key: const ValueKey(0),
                            endActionPane: ActionPane(
                              extentRatio: 0.2,
                              motion: const ScrollMotion(),
                              children: [
                                CustomSlidableAction(
                                  onPressed: (context) {
                                    _userBloc.add(UserEvent.deletePaymentCard(
                                      paymentCards[index],
                                    ));
                                  },
                                  backgroundColor: Colors.transparent,
                                  foregroundColor: Colors.transparent,
                                  child: const $AssetsIconsGen().basket.svg(),
                                ),
                              ],
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 40.h,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.h),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  if (latsDigits.trim() == '1111')
                                    const $AssetsIconsGen().visaColor.svg()
                                  else
                                    latsDigits.trim() == '2222'
                                        ? const $AssetsIconsGen()
                                            .mastercardColor
                                            .svg()
                                        : const $AssetsIconsGen()
                                            .amexColor
                                            .svg(),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    '**** **** **** ${paymentCards[index].number.substring(paymentCards[index].number.length - 5)}',
                                    style: AppTextStyles.regularText.copyWith(
                                      color: AppColors.iconGrey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13.h,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                    backgroundColor: AppColors.blue,
                  ),
                  child: Text(l10n.addCard),
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
                      builder: (context) => Padding(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: CardsFields(
                          userBloc: _userBloc,
                        ),
                      ),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
