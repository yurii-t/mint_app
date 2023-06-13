part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    required BlocStatus status,
    CurrentUser? currentUser,
    List<Doctor>? doctors,
    List<Doctor>? allDoctors,
    Object? error,
  }) = _MainState;
}
