import 'package:equatable/equatable.dart';

import 'package:mint_app/data/models/doctor.dart';

class Session extends Equatable {
  final String id;
  final Doctor doctor;
  final DateTime bookedDateTime;
  final String notes;

  const Session({
    required this.id,
    required this.doctor,
    required this.bookedDateTime,
    required this.notes,
  });

  Session copyWith({
    String? id,
    Doctor? doctor,
    DateTime? bookedDateTime,
    String? notes,
  }) {
    return Session(
      id: id ?? this.id,
      doctor: doctor ?? this.doctor,
      bookedDateTime: bookedDateTime ?? this.bookedDateTime,
      notes: notes ?? this.notes,
    );
  }

  @override
  List<Object> get props => [id, doctor, bookedDateTime];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'doctor': doctor.toMap(),
      'bookedDateTime': bookedDateTime.millisecondsSinceEpoch,
      'notes': notes,
    };
  }

  factory Session.fromMap(Map<String, dynamic> map) {
    return Session(
      id: map['id'] as String,
      doctor: Doctor.fromSnapShot(map['doctor'] as Map<String, dynamic>),
      bookedDateTime:
          DateTime.fromMillisecondsSinceEpoch(map['bookedDateTime'] as int),
      notes: map['notes'] as String,
    );
  }
}
