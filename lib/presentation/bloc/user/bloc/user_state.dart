part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required BlocStatus status,
    CurrentUser? currentUser,
    List<PaymentMethod>? paymentCards,
    Object? error,
  }) = _UserState;
}
