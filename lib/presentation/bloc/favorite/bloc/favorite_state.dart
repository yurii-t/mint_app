part of 'favorite_bloc.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    required BlocStatus status,
    CurrentUser? currentUser,
    Object? error,
  }) = _FavoriteState;
}
