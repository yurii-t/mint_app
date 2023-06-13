part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.getDoctors() = _getDoctors;
  const factory MainEvent.getDoctorsMatching({
    required String communicationValue,
    required String therapyBeforeValue,
    required String priceValue,
    required List<String> selectedProblems,
  }) = _getDoctorsMatching;
  const factory MainEvent.getDoctorsBySymptoms({
    required List<String> selectedSymptoms,
  }) = _getDoctorsBySymptoms;
}
