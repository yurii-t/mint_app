enum DoctorExperience {
  noExprience,
  fromOneToThreeYears,
  fromFourToSevenYears,
  moreThanSevenYears,
  all,
}

extension DoctorExperienceExtension on DoctorExperience {
  String get toStringValue {
    switch (this) {
      case DoctorExperience.noExprience:
        return 'no exprience';
      case DoctorExperience.fromOneToThreeYears:
        return 'from 1 to 3 years';
      case DoctorExperience.fromFourToSevenYears:
        return 'from 4 to 7 years';
      case DoctorExperience.moreThanSevenYears:
        return 'more than 7 years';
      case DoctorExperience.all:
        return 'All';
    }
  }
}
