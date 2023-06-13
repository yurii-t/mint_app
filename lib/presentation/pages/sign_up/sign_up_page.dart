// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: avoid-non-null-assertion
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/backbone/dependency_injection.dart' as di;
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/phone_auth/bloc/phone_auth_bloc.dart';
import 'package:mint_app/presentation/bloc/status.dart';
import 'package:mint_app/routes/app_router.gr.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final PhoneAuthBloc _phoneAuthBloc = di.sl.get();
  final _textEditingController = TextEditingController();
  bool isCheckedUserAgreement = false;
  bool isCheckedPrivacyPolicy = false;
  bool numberLentghError = false;

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.background,
      body: BlocSelector<PhoneAuthBloc, PhoneAuthState, PhoneAuthState>(
        bloc: _phoneAuthBloc,
        selector: (state) {
          if (state.status == BlocStatus.loaded) {
            if (state.isPhoneAuthCodeSentSuccess!) {
              context.router.push(EnterPinRoute(
                verId: state.verificationId ?? '',
                isRegistration: true,
                phoneNumber: _textEditingController.text,
              ));
            } else if (state.isPhoneNumberExist!) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    l10n.userWithThisNumberIsAlreadyRegistered,
                  ),
                ),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.error.toString()),
                ),
              );
            }
          }

          return state;
        },
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
              bottom: 20.h,
              top: 216.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.signUp,
                  style: AppTextStyles.title,
                ),
                SizedBox(
                  height: 28.h,
                ),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      numberLentghError = value.length < 13 ? true : false;
                    });
                  },
                  controller: _textEditingController,
                  style: const TextStyle(
                    color: AppColors.black,
                  ),
                  maxLength: 13,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.h)),
                      borderSide: numberLentghError
                          ? const BorderSide(color: AppColors.red)
                          : BorderSide.none,
                    ),
                    focusColor: Colors.white,
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.h)),
                      borderSide: numberLentghError
                          ? const BorderSide(color: AppColors.red)
                          : BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.h)),
                      borderSide: numberLentghError
                          ? const BorderSide(color: AppColors.red)
                          : BorderSide.none,
                    ),
                    errorText: !numberLentghError ? null : l10n.wrongNumber,
                    filled: true,
                    fillColor: AppColors.white,
                    hintText: l10n.phoneNumber,
                    hintStyle: AppTextStyles.regularTextGrey,
                    errorStyle: AppTextStyles.regularTextGrey
                        .copyWith(color: Colors.red),
                    counter: const SizedBox.shrink(),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.w),
                    ),
                    fixedSize: Size(MediaQuery.of(context).size.width.w, 50),
                  ),
                  onPressed: numberLentghError ? null : _sendOtp,
                  child: Text(
                    l10n.signUp,
                    style: AppTextStyles.boldNormal
                        .copyWith(color: AppColors.white),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text.rich(
                  TextSpan(
                    text: l10n.bytappingSignUp,
                    style: AppTextStyles.regularTextGrey,
                    children: [
                      TextSpan(
                        text: l10n.mindyTermsAndConditions,
                        style: AppTextStyles.regularTextGrey
                            .copyWith(color: AppColors.black),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(
                      text: l10n.alreadyHaveAnAccount,
                      style: AppTextStyles.regularTextGrey
                          .copyWith(color: Colors.black),
                      children: [
                        TextSpan(
                          text: l10n.clickSignIn,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.router.push(AppPinRoute(isSignIn: true));
                            },
                          style: AppTextStyles.regularTextGrey
                              .copyWith(color: AppColors.blue),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _sendOtp() {
    final phoneNumberWithCode = _textEditingController.text;
    _phoneAuthBloc.add(PhoneAuthEvent.sendOtpToPhone(
      phoneNumber: phoneNumberWithCode,
      isRegistration: true,
    ));
  }
}
