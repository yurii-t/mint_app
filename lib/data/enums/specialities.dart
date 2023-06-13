enum Specialities {
  Motivation,
  Panic,
  Burnout,
  Depression,
  SelfConfidence,
  Immigration,
  Stress,
  PurposeInLife,
  Relationships,
  Career,
  Cheat,
  Finance,
}

extension SpecialitiesExtension on Specialities {
  String get toStringValue {
    switch (this) {
      case Specialities.Motivation:
        return 'Motivation';
      case Specialities.Panic:
        return 'Panic';
      case Specialities.Burnout:
        return 'Burnout';
      case Specialities.SelfConfidence:
        return 'Self-confidence';
      case Specialities.Immigration:
        return 'Immigration';
      case Specialities.Stress:
        return 'Stress';
      case Specialities.PurposeInLife:
        return 'Purpose in life';
      case Specialities.Relationships:
        return 'Relationships';
      case Specialities.Career:
        return 'Career';
      case Specialities.Cheat:
        return 'Cheat';
      case Specialities.Finance:
        return 'Finance';
      case Specialities.Depression:
        return 'Depression';
    }
  }
}
