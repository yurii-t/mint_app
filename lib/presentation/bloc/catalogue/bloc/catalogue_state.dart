part of 'catalogue_bloc.dart';

@freezed
class CatalogueState with _$CatalogueState {
  const factory CatalogueState({
    required BlocStatus status,
    List<Doctor>? doctors,
    List<Doctor>? allDoctors,
    Object? error,
  }) = _CatalogueState;
}
