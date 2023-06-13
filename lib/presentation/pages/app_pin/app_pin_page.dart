// ignore_for_file: avoid-non-null-assertion

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/backbone/dependency_injection.dart' as di;
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/phone_auth/bloc/phone_auth_bloc.dart';
import 'package:mint_app/presentation/bloc/status.dart';
import 'package:mint_app/presentation/bloc/user/bloc/user_bloc.dart';
import 'package:mint_app/presentation/pages/app_pin/widgets/shake_widget.dart';
import 'package:mint_app/routes/app_router.gr.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AppPinPage extends StatefulWidget {
  const AppPinPage({
    required this.isSignIn,
    this.isSettings = false,
    super.key,
  });
  final bool isSignIn;
  final bool isSettings;

  @override
  State<AppPinPage> createState() => _AppPinPageState();
}

class _AppPinPageState extends State<AppPinPage> {
  final PhoneAuthBloc _phoneAuthBloc = di.sl.get();
  final UserBloc _userBloc = di.sl.get();
  final TextEditingController _pinController = TextEditingController();
  String enteredPin = '';
  String confirmPin = '';
  bool hasError = false;

  final shakeKey = GlobalKey<ShakeWidgetState>();
  @override
  void initState() {
    _userBloc.add(const UserEvent.getCurrentUser());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: widget.isSettings
          ? AppBar(
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
                      color: Colors.red,
                    ),
                    Text(
                      l10n.backButton,
                      style: AppTextStyles.regularText,
                    ),
                  ],
                ),
              ),
            )
          : null,
      body: Padding(
        padding: EdgeInsets.only(
          left: 16.w,
          right: 16.w,
          bottom: 20.h,
          top: widget.isSettings ? 116.h : 216.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (widget.isSignIn)
              Text(
                l10n.enterPinCode,
                style: AppTextStyles.boldNormal,
              )
            else if (!widget.isSignIn && enteredPin.isEmpty)
              Text(
                l10n.enterNewPinCode,
                style: AppTextStyles.boldNormal,
              )
            else if (!widget.isSignIn && enteredPin.isNotEmpty)
              Text(
                l10n.confirmPinCode,
                style: AppTextStyles.boldNormal,
              ),
            SizedBox(
              height: 20.h,
            ),
            ShakeWidget(
              key: shakeKey,
              child: PinCodeTextField(
                keyboardType: TextInputType.number,
                textStyle: const TextStyle(
                  color: Colors.transparent,
                  fontSize: 20,
                ),
                length: 4,
                mainAxisAlignment: MainAxisAlignment.center,
                showCursor: false,
                autoFocus: true,
                obscureText: true,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.circle,
                  fieldHeight: 20.h,
                  fieldWidth: 20.w,
                  fieldOuterPadding: const EdgeInsets.all(10),
                  selectedColor: AppColors.grey,
                  inactiveColor: AppColors.grey,
                  activeColor: AppColors.black,
                  inactiveFillColor: hasError ? AppColors.red : AppColors.grey,
                  selectedFillColor: hasError ? AppColors.red : AppColors.grey,
                  activeFillColor: AppColors.black,
                ),
                animationDuration: const Duration(milliseconds: 100),
                enableActiveFill: true,
                controller: _pinController,
                onCompleted: (val) {
                  if (enteredPin.isEmpty) {
                    setState(() {
                      enteredPin = val;
                    });

                    _pinController.clear();
                  } else {
                    confirmPin = val;
                  }

                  if (widget.isSignIn) {
                    if (_userBloc.state.status == BlocStatus.loaded) {
                      if (_userBloc.state.currentUser!.pinCode == val) {
                        context.router.replace(const HomeRoute());
                        setState(() {
                          hasError = false;
                        });
                      } else {
                        setState(() {
                          hasError = true;
                        });
                        shakeKey.currentState?.shake().whenComplete(() {
                          _pinController.clear();
                          enteredPin = '';
                          setState(() {
                            hasError = false;
                          });
                        });
                      }
                    }
                  } else if (!widget.isSignIn &&
                      enteredPin.isNotEmpty &&
                      confirmPin.isNotEmpty) {
                    setState(() {
                      hasError = enteredPin != confirmPin;
                    });
                    if (hasError) {
                      shakeKey.currentState?.shake().whenComplete(() {
                        _pinController.clear();
                        enteredPin = '';
                        setState(() {
                          hasError = false;
                        });
                      });
                    }
                    if (!hasError)
                      _phoneAuthBloc.add(
                        PhoneAuthEvent.setAppPinCode(pinCode: enteredPin),
                      );

                    if (!widget.isSettings) {
                      context.router.replaceAll([const HomeRoute()]);
                    } else {
                      context.router.pop();
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
            SizedBox(
              height: 10.h,
            ),
            if (hasError)
              Text(
                l10n.pinCodesNotMatch,
                style: AppTextStyles.regularTextGrey
                    .copyWith(color: AppColors.red),
              )
            else
              const SizedBox.shrink(),
            const Spacer(),
            TextButton(
              onPressed: () {
                showCupertinoDialog<Widget>(
                  context: context,
                  builder: (_) => CupertinoAlertDialog(
                    title: Text(l10n.pinCodeRecover),
                    content: Text(
                      l10n.ifYouForgotPin,
                    ),
                    actions: [
                      CupertinoButton(
                        child: Text(l10n.apply),
                        onPressed: () {
                          _phoneAuthBloc
                              .add(const PhoneAuthEvent.onTwillioSendSms());
                          context.router.replace(EnterPinRoute(
                            isRegistration: false,
                            verId: '',
                            phoneNumber: '',
                          ));
                        },
                      ),
                      CupertinoButton(
                        child: Text(l10n.cancel),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                l10n.forgotPinCode,
                textAlign: TextAlign.center,
                style: AppTextStyles.regularTextGrey
                    .copyWith(color: AppColors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
