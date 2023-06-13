// ignore_for_file: avoid_positional_boolean_parameters

part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getCurrentUser() = _GetCurrentUser;
  const factory UserEvent.addPaymentCard(PaymentMethod card, bool saveCard) =
      _AddPaymentCard;
  const factory UserEvent.deletePaymentCard(
    PaymentMethod card,
  ) = _DeletePaymentCard;
  const factory UserEvent.bookSession(Session session) = _BookSession;
  const factory UserEvent.getUserStream() = _GetUserStream;
  const factory UserEvent.changeFirstName(String firstName) = _ChangeFirstName;
  const factory UserEvent.changeLastName(String lastName) = _ChangeLastName;
  const factory UserEvent.changeDob(String dob) = _ChangeDob;
}
