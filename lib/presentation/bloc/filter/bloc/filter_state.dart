part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState({
    required BlocStatus status,
    required List<String> experienceList,
    required List<String> specialities,
    required String selectedExperience,
    required List<String> selectedSpecialities,
    num? startPrice,
    num? endPrice,
    num? maxPrice,
    Object? error,
  }) = _FilterState;
}
