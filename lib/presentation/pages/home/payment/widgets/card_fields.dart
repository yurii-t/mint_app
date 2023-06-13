import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mint_app/data/models/payment_method.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/user/bloc/user_bloc.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';
import 'package:mint_app/utils/card_formatter.dart';

class CardsFields extends StatefulWidget {
  const CardsFields({required this.userBloc, super.key});

  final UserBloc userBloc;

  @override
  State<CardsFields> createState() => _CardsFieldsState();
}

class _CardsFieldsState extends State<CardsFields> {
  final isCardNumberError = ValueNotifier<bool>(false);
  final isCardDateNotValid = ValueNotifier<bool>(false);
  final isCvvError = ValueNotifier<bool>(false);
  final isSaveCard = ValueNotifier<bool>(false);

  final textCardController = TextEditingController();
  final textCardDateController = TextEditingController();
  final textCardCvvController = TextEditingController();

  @override
  void dispose() {
    textCardController.dispose();
    textCardDateController.dispose();
    textCardCvvController.dispose();
    isCardNumberError.dispose();
    isCardDateNotValid.dispose();
    isCvvError.dispose();
    isSaveCard.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    return Container(
      color: AppColors.background,
      height: MediaQuery.of(context).size.height * 0.9,
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            indent: 160,
            endIndent: 160,
            thickness: 4,
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close),
              ),
              Text(
                l10n.addCardDetails,
                style: AppTextStyles.boldNormal,
              ),
              const Icon(
                Icons.close,
                color: Colors.transparent,
              ),
            ],
          ),
          ValueListenableBuilder(
            valueListenable: isCardNumberError,
            builder: (context, cardNumberErrorValue, child) {
              return TextFormField(
                controller: textCardController,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CardMaskedTextInputFormatter(),
                ],
                keyboardType: TextInputType.number,
                style: AppTextStyles.regularText.copyWith(fontSize: 15),
                textAlign: TextAlign.left,
                onChanged: (value) {
                  isCardNumberError.value = value.length < 19;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  errorText: !cardNumberErrorValue ? null : l10n.numberError,
                  border: OutlineInputBorder(
                    borderSide: !cardNumberErrorValue
                        ? BorderSide.none
                        : const BorderSide(
                            color: Colors.red,
                          ),
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                  hintText: l10n.cardNumber,
                  hintStyle:
                      AppTextStyles.regularTextGrey.copyWith(fontSize: 15),
                  counter: const SizedBox.shrink(),
                ),
                maxLength: 19,
                minLines: 1,
                maxLines: 1,
              );
            },
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            children: [
              Expanded(
                child: ValueListenableBuilder(
                  valueListenable: isCardDateNotValid,
                  builder: (context, cardDateNotValidValue, child) {
                    return TextFormField(
                      controller: textCardDateController,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        CardMaskedTextInputFormatter(cardNumber: false),
                      ],
                      onChanged: (val) {
                        if (val.length == 5) {
                          final formmatedDate = DateFormat('MM/yy').parse(val);

                          if (formmatedDate.year < DateTime.now().year) {
                            isCardDateNotValid.value = true;
                          } else if (formmatedDate.year ==
                                  DateTime.now().year &&
                              formmatedDate.month < DateTime.now().month) {
                            isCardDateNotValid.value = true;
                          } else {
                            isCardDateNotValid.value = false;
                          }
                        }
                      },
                      keyboardType: TextInputType.number,
                      style: AppTextStyles.regularText.copyWith(fontSize: 15),
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        errorText:
                            !cardDateNotValidValue ? null : l10n.wrongDate,
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: !cardDateNotValidValue
                              ? BorderSide.none
                              : const BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                        ),
                        hintText: 'MM/YY',
                        hintStyle: AppTextStyles.regularTextGrey
                            .copyWith(fontSize: 15),
                        counter: const SizedBox.shrink(),
                      ),
                      maxLength: 5,
                      minLines: 1,
                      maxLines: 1,
                    );
                  },
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: ValueListenableBuilder(
                  valueListenable: isCvvError,
                  builder: (context, cvvErrorValue, child) {
                    return TextFormField(
                      controller: textCardCvvController,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onChanged: (value) {
                        isCvvError.value = value.length < 3;
                      },
                      keyboardType: TextInputType.number,
                      style: AppTextStyles.regularText.copyWith(fontSize: 15),
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        errorText: !cvvErrorValue ? null : l10n.wrongDate,
                        border: OutlineInputBorder(
                          borderSide: !cvvErrorValue
                              ? BorderSide.none
                              : const BorderSide(color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                        ),
                        hintText: 'CVV',
                        hintStyle: AppTextStyles.regularTextGrey
                            .copyWith(fontSize: 15),
                        counter: const SizedBox.shrink(),
                      ),
                      maxLength: 3,
                      minLines: 1,
                      maxLines: 1,
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          ValueListenableBuilder(
            valueListenable: isSaveCard,
            builder: (context, saveCardValue, child) {
              return GestureDetector(
                onTap: () {
                  isSaveCard.value = !isSaveCard.value;
                },
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                        side: const BorderSide(width: 9, color: AppColors.grey),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                          (states) {
                            if (states.contains(MaterialState.selected)) {
                              return AppColors.blue;
                            }

                            return AppColors.iconGrey;
                          },
                        ),
                        value: saveCardValue,
                        onChanged: (value) {
                          isSaveCard.value = !isSaveCard.value;
                        },
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      l10n.saveCardData,
                      style: AppTextStyles.regularTextGrey
                          .copyWith(color: AppColors.iconGrey.withOpacity(0.6)),
                    ),
                  ],
                ),
              );
            },
          ),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(MediaQuery.of(context).size.width, 50),
            ),
            child: Text(
              l10n.addCard,
              style: AppTextStyles.regularText.copyWith(color: Colors.white),
            ),
            onPressed: (textCardController.text.isNotEmpty &&
                    textCardDateController.text.isNotEmpty &&
                    textCardCvvController.text.isNotEmpty &&
                    !isCardNumberError.value &&
                    !isCardDateNotValid.value &&
                    !isCvvError.value)
                ? () {
                    widget.userBloc.add(UserEvent.addPaymentCard(
                      PaymentMethod(
                        number: textCardController.text,
                        validUntil: textCardDateController.text,
                        cvv: textCardCvvController.text,
                      ),
                      isSaveCard.value,
                    ));

                    context.router.pop();
                  }
                : null,
          ),
        ],
      ),
    );
  }
}
