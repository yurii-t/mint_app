import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint_app/data/data.dart';

import 'package:mint_app/presentation/bloc/status.dart';

part 'phone_auth_event.dart';
part 'phone_auth_state.dart';
part 'phone_auth_bloc.freezed.dart';

class PhoneAuthBloc extends Bloc<PhoneAuthEvent, PhoneAuthState> {
  final AuthGatewayImpl _authGatewayImpl;
  final FirebaseFirestoreGatewayImpl _firebaseFirestoreGatewayImpl;

  PhoneAuthBloc(
    this._authGatewayImpl,
    this._firebaseFirestoreGatewayImpl,
  ) : super(const PhoneAuthState(status: BlocStatus.loading)) {
    on<PhoneAuthEvent>((event, emit) async {
      try {
        await event.when<Future<void>>(
          sendOtpToPhone: (phoneNumber, isRegistration) async => _onSendOtp(
            emit: emit,
            phoneNumber: phoneNumber,
          ),
          verifySentOtp: (otpCode, verificationId) async => _onVerifyOtp(
            emit: emit,
            verificationId: verificationId,
            otpCode: otpCode,
          ),
          onPhoneOtpSent: (token, verificationId) =>
              _onPhoneOtpSent(emit: emit, verificationId: verificationId),
          onPhoneAuthVerificationComplete: (credential) async =>
              _loginWithCredential(emit: emit, credential: credential),
          onPhoneAuthError: (error) =>
              _onPhoneAuthError(emit: emit, error: error),
          setAppPinCode: (pinCode) =>
              _setAppPinCode(emit: emit, pinCode: pinCode),
          onTwillioSendSms: () => _onTwillioSendSms(
            emit: emit,
          ),
        );
      } on Exception catch (error) {
        emit(await _errorState(error));
        log('error: $error');
      }
    });
  }

  Future<void> _onSendOtp({
    required Emitter<PhoneAuthState> emit,
    required String phoneNumber,
  }) async {
    try {
      await _authGatewayImpl.verifyPhone(
        phoneNumber: phoneNumber,
        verificationCompleted: (credential) async {
          add(PhoneAuthEvent.onPhoneAuthVerificationComplete(
            credential: credential,
          ));
        },
        verificationFailed: (e) {
          add(PhoneAuthEvent.onPhoneAuthError(error: e.code));
        },
        codeSent: (verificationId, resendToken) {
          add(PhoneAuthEvent.onPhoneOtpSent(
            verificationId: verificationId,
            token: resendToken,
          ));
        },
        codeAutoRetrievalTimeout: (verificationId) {
          debugPrint(verificationId);
        },
      );
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _onVerifyOtp({
    required Emitter<PhoneAuthState> emit,
    required String verificationId,
    required String otpCode,
  }) async {
    try {
      final PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: otpCode,
      );
      add(PhoneAuthEvent.onPhoneAuthVerificationComplete(
        credential: credential,
      ));
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _loginWithCredential({
    required Emitter<PhoneAuthState> emit,
    required AuthCredential credential,
  }) async {
    try {
      await _authGatewayImpl.signInWithCredential(credential).then((user) {
        if (user.user != null) {
          _firebaseFirestoreGatewayImpl.createCurrentUser(
            const CurrentUser(
              userId: '',
              firstName: '',
              lastName: '',
              pinCode: '',
              profileImage: '',
              phoneNumber: '',
              email: '',
              dateOfBirth: '',
            ),
          );

          emit(state.copyWith(
            status: BlocStatus.loaded,
            isPhoneAuthVerified: true,
            uid: user.user?.uid,
          ));
        }
      });
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(isPhoneAuthVerified: false, error: e.code));
    } on Exception catch (e) {
      emit(state.copyWith(isPhoneAuthVerified: false, error: e.toString()));
    }
  }

  Future<void> _setAppPinCode({
    required Emitter<PhoneAuthState> emit,
    required String pinCode,
  }) async {
    try {
      await _firebaseFirestoreGatewayImpl.setAppPinCode(pinCode);
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(error: e.code));
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _onPhoneAuthError({
    required Emitter<PhoneAuthState> emit,
    required String error,
  }) async {
    emit(state.copyWith(isPhoneAuthVerified: false, error: error));
  }

  Future<void> _onPhoneOtpSent({
    required Emitter<PhoneAuthState> emit,
    required String verificationId,
  }) async {
    emit(state.copyWith(
      status: BlocStatus.loaded,
      isPhoneAuthCodeSentSuccess: true,
      verificationId: verificationId,
    ));
  }

  Future<void> _onTwillioSendSms({
    required Emitter<PhoneAuthState> emit,
  }) async {
    emit(state.copyWith(
      status: BlocStatus.loaded,
      error: null,
      recoveryCode: '111111',
    ));
  }

  Future<PhoneAuthState> _errorState(Object error) async => PhoneAuthState(
        uid: state.uid,
        error: error,
        status: BlocStatus.error,
      );
}
