// ignore_for_file: deprecated_member_use_from_same_package

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mint_app/backbone/dependency_injection.dart' as di;
import 'package:mint_app/data/data.dart';
import 'package:mint_app/data/models/session.dart';
import 'package:mint_app/gen/assets.gen.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/user/bloc/user_bloc.dart';
import 'package:mint_app/presentation/pages/home/payment/widgets/card_fields.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';
import 'package:uuid/uuid.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({
    required this.doctor,
    required this.bookedDateTime,
    required this.notes,
    super.key,
  });
  final Doctor doctor;
  final DateTime bookedDateTime;
  final String notes;

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  PaymentMethod? selectedCard;
  final UserBloc _userBloc = di.sl.get();

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
          onPressed: () {
            context.router.pop();
          },
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
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 53.h,
                      width: 53.w,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(10.w),
                      ),
                      child: widget.doctor.profileImage.isNotEmpty
                          ? Image.network(
                              widget.doctor.profileImage,
                              fit: BoxFit.contain,
                            )
                          : const SizedBox.shrink(),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                widget.doctor.name,
                                style: AppTextStyles.boldNormal,
                              ),
                              const Spacer(),
                              Text(
                                '₴${widget.doctor.price} ',
                                style: AppTextStyles.boldNormal,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            children: [
                              Text(
                                '${DateFormat('dd.MM.yyyy').format(widget.bookedDateTime)}, ${DateFormat('HH:mm').format(widget.bookedDateTime)}',
                                style: AppTextStyles.regularTextGrey
                                    .copyWith(color: AppColors.textGrey),
                              ),
                              const Spacer(),
                              Text(
                                l10n.perVisit,
                                style: AppTextStyles.regularTextGrey
                                    .copyWith(color: AppColors.textGrey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.h),
            const Divider(
              thickness: 1,
            ),
            SizedBox(height: 16.h),
            SizedBox(
              height: 130.h,
              child: BlocSelector<UserBloc, UserState, List<PaymentMethod>>(
                bloc: _userBloc,
                selector: (state) => state.paymentCards ?? [],
                builder: (context, paymentCards) {
                  return paymentCards.isEmpty
                      ? Center(child: Text(l10n.noCardsAddCard))
                      : ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: paymentCards.length,
                          itemBuilder: (context, index) {
                            final latsDigits =
                                paymentCards[index].number.substring(
                                      paymentCards[index].number.length - 5,
                                    );

                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCard = paymentCards[index];
                                });
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.only(left: 5, right: 5),
                                width: 127.w,
                                height: 123.h,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: selectedCard == paymentCards[index]
                                      ? AppColors.blue
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(15.w),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if (latsDigits.trim() == '1111')
                                      const $AssetsIconsGen().visa.svg(
                                            color: selectedCard ==
                                                    paymentCards[index]
                                                ? Colors.white
                                                : AppColors.iconGrey,
                                          )
                                    else
                                      latsDigits.trim() == '2222'
                                          ? const $AssetsIconsGen()
                                              .mastercard
                                              .svg(
                                                color: selectedCard ==
                                                        paymentCards[index]
                                                    ? Colors.white
                                                    : AppColors.textGrey,
                                              )
                                          : const $AssetsIconsGen().amex.svg(
                                                color: selectedCard ==
                                                        paymentCards[index]
                                                    ? Colors.white
                                                    : AppColors.iconGrey,
                                              ),
                                    const Spacer(),
                                    Text(
                                      l10n.creditCard,
                                      style: AppTextStyles.regularText.copyWith(
                                        color:
                                            selectedCard == paymentCards[index]
                                                ? Colors.white
                                                : Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13.h,
                                      ),
                                    ),
                                    Text(
                                      '\u2022\u2022\u2022\u2022 ${paymentCards[index].number.substring(paymentCards[index].number.length - 5)}',
                                      style: AppTextStyles.regularText.copyWith(
                                        color:
                                            selectedCard == paymentCards[index]
                                                ? const Color(0xFFB2D7FF)
                                                : AppColors.iconGrey
                                                    .withOpacity(0.3),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13.h,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                },
              ),
            ),
            SizedBox(height: 24.h),
            GestureDetector(
              onTap: () {
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
              child: Row(
                children: [
                  const Icon(Icons.add),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    l10n.addCreditCard,
                    style: AppTextStyles.regularText,
                  ),
                ],
              ),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width, 50),
              ),
              child: Text(
                '${l10n.pay} ${widget.doctor.price}₴',
                style: AppTextStyles.regularText.copyWith(color: Colors.white),
              ),
              onPressed: selectedCard == null
                  ? null
                  : () {
                      _userBloc.add(UserEvent.bookSession(Session(
                        id: const Uuid().v1(),
                        doctor: widget.doctor,
                        bookedDateTime: widget.bookedDateTime,
                        notes: widget.notes,
                      )));

                      context.router.popUntilRoot();
                    },
            ),
          ],
        ),
      ),
    );
  }
}
