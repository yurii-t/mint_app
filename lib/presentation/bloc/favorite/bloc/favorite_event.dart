part of 'favorite_bloc.dart';

@freezed
class FavoriteEvent with _$FavoriteEvent {
  const factory FavoriteEvent.getUserStream() = _getUserStream;
  const factory FavoriteEvent.addDoctorToFavorite({required Doctor doctor}) =
      _addDoctorToFavorite;
}
