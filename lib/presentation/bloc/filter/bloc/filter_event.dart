part of 'filter_bloc.dart';

@freezed
class FilterEvent with _$FilterEvent {
  const factory FilterEvent.loadFilter() = _LoadFilter;
  const factory FilterEvent.changePrice({
    required num startPrice,
    required num endPrice,
  }) = _ChangePrice;
  const factory FilterEvent.selectExperience({
    required String experience,
  }) = _SelectExperience;
  const factory FilterEvent.selectSpecialities({
    required String selectedSeciality,
  }) = _SelectSpecialities;

  const factory FilterEvent.clearFilter() = _ClearFilter;
}
