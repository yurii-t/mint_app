// ignore_for_file: unnecessary_statements

import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/backbone/dependency_injection.dart' as di;
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/auth_status/auth_status_bloc.dart';
import 'package:mint_app/presentation/bloc/phone_auth/bloc/phone_auth_bloc.dart';
import 'package:mint_app/presentation/bloc/status.dart';
import 'package:mint_app/routes/app_router.gr.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class EnterPinPage extends StatefulWidget {
  final String verId;
  final bool isRegistration;
  final String phoneNumber;
  const EnterPinPage({
    required this.verId,
    required this.isRegistration,
    required this.phoneNumber,
    Key? key,
  }) : super(key: key);

  @override
  State<EnterPinPage> createState() => _EnterPinPageState();
}

class _EnterPinPageState extends State<EnterPinPage> {
  final AuthStatusBloc _authStatusBloc = di.sl.get();
  final PhoneAuthBloc _phoneAuthBloc = di.sl.get();
  final TextEditingController _pinController = TextEditingController();
  int time = 60;
  late Timer _timer;

  void startTimer() {
    const onsec = Duration(seconds: 1);

    _timer = Timer.periodic(onsec, (timer) {
      if (time == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          time--;
        });
      }
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    final String minutesStr =
        ((time / 60) % 60).floor().toString().padLeft(2, '0');
    final String secondsStr = (time % 60).floor().toString().padLeft(2, '0');

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.background,
      body: BlocConsumer<PhoneAuthBloc, PhoneAuthState>(
        bloc: _phoneAuthBloc,
        listener: (context, state) {
          if (state.status == BlocStatus.loaded) {
            final isPhoneAuthVerified = state.isPhoneAuthVerified;
            if (isPhoneAuthVerified != null) {
              if (isPhoneAuthVerified) {
                _authStatusBloc.add(AuthStatusEvent.logedIn(
                  isRegistration: widget.isRegistration,
                ));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.error.toString()),
                  ),
                );
              }
            }
          }
        },
        builder: (context, state) {
          if (state.status == BlocStatus.loaded) {
            final bool hasError = state.error != null;

            return Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                bottom: 20.h,
                top: 216.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l10n.enterACode, style: AppTextStyles.title),
                  Text.rich(
                    TextSpan(
                      text: l10n.codeWasSend,
                      style: AppTextStyles.regularTextGrey,
                      children: [
                        TextSpan(
                          text: widget.phoneNumber,
                          style: AppTextStyles.regularTextGrey
                              .copyWith(color: AppColors.blue),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.h),
                  Center(
                    child: PinCodeTextField(
                      keyboardType: TextInputType.number,
                      textStyle: AppTextStyles.regularText,
                      length: 6,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(10.w),
                        fieldHeight: 57.h,
                        fieldWidth: 53.w,
                        selectedColor:
                            hasError ? AppColors.red : AppColors.white,
                        inactiveColor: AppColors.grey,
                        activeColor: hasError ? AppColors.red : AppColors.white,
                        inactiveFillColor: AppColors.white,
                        selectedFillColor: AppColors.white,
                        errorBorderColor: Colors.red,
                      ),
                      animationDuration: const Duration(milliseconds: 100),
                      enableActiveFill: false,
                      controller: _pinController,
                      onCompleted: (val) {
                        if (widget.isRegistration) {
                          _verifyOtp(verificationId: widget.verId);
                        } else {
                          if (state.recoveryCode != null) {
                            val == state.recoveryCode
                                ? context.router.replace(
                                    AppPinRoute(isSignIn: false),
                                  )
                                : _phoneAuthBloc.add(
                                    const PhoneAuthEvent.onPhoneAuthError(
                                      error: 'Wrong Number',
                                    ),
                                  );
                            ;
                          }
                        }
                      },
                      onChanged: debugPrint,
                      beforeTextPaste: (text) {
                        return true;
                      },
                      appContext: context,
                    ),
                  ),
                  const SizedBox(height: 41),
                  Row(children: [
                    Text(
                      l10n.youWillAbleToResendCode,
                      style: AppTextStyles.regularTextGrey,
                    ),
                    Text(
                      '$minutesStr:$secondsStr',
                      style: AppTextStyles.regularTextGrey,
                    ),
                  ]),
                  const Spacer(),
                  if (time == 0)
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          if (widget.isRegistration) {
                            time == 0 ? _sendOtp() : null;
                          } else {
                            time == 0
                                ? _phoneAuthBloc.add(
                                    const PhoneAuthEvent.onTwillioSendSms(),
                                  )
                                : null;
                          }
                        },
                        child: Text(
                          l10n.resendCode,
                          textAlign: TextAlign.center,
                          style: AppTextStyles.regularTextGrey
                              .copyWith(color: AppColors.blue),
                        ),
                      ),
                    )
                  else
                    const SizedBox.shrink(),
                ],
              ),
            );
          } else {
            return const SizedBox.square(
              dimension: 24,
              child: Center(child: CircularProgressIndicator()),
            );
          }
        },
      ),
    );
  }

  void _verifyOtp({required String verificationId}) {
    _phoneAuthBloc.add(PhoneAuthEvent.verifySentOtp(
      otpCode: _pinController.text,
      verificationId: verificationId,
    ));
  }

  void _sendOtp() {
    final phoneNumberWithCode = widget.phoneNumber;
    _phoneAuthBloc.add(PhoneAuthEvent.sendOtpToPhone(
      phoneNumber: phoneNumberWithCode,
      isRegistration: false,
    ));
  }
}
