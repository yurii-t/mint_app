part of 'catalogue_bloc.dart';

@freezed
class CatalogueEvent with _$CatalogueEvent {
  const factory CatalogueEvent.getCatalogueDoctors() = _GetCatalogueDoctors;
  const factory CatalogueEvent.applyFilters({
    required num startPrice,
    required num endPrice,
    required String experience,
    required List<String> selectedSecialities,
  }) = _ApplyFilters;
}
