// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: avoid_annotating_with_dynamic

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

import 'package:mint_app/data/data.dart';
import 'package:mint_app/data/models/session.dart';

class CurrentUser extends Equatable {
  final String userId;
  final String firstName;
  final String lastName;
  final String profileImage;
  final String phoneNumber;
  final String dateOfBirth;
  final String email;
  final String pinCode;
  final List<String>? userCondition;
  final List<String>? relationship;
  final List<PaymentMethod>? paymentCards;
  final List<Doctor>? favoriteDoctors;
  final List<Session>? sessions;

  const CurrentUser({
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.profileImage,
    required this.phoneNumber,
    required this.email,
    required this.pinCode,
    required this.dateOfBirth,
    this.userCondition,
    this.paymentCards,
    this.relationship,
    this.favoriteDoctors,
    this.sessions,
  });

  factory CurrentUser.fromSnapShot(DocumentSnapshot snap) {
    final CurrentUser user = CurrentUser(
      userId: snap['userId'] as String,
      firstName: snap['firstName'] as String,
      lastName: snap['lastName'] as String,
      dateOfBirth: snap['dateOfBirth'] as String,
      profileImage: snap['profileImage'] as String,
      phoneNumber: snap['phoneNumber'] as String,
      email: snap['email'] as String,
      pinCode: snap['pinCode'] as String,
      userCondition: (snap['userCondition'] as List<dynamic>)
          .map((dynamic e) => e.toString())
          .toList(),
      relationship: (snap['relationship'] as List<dynamic>)
          .map((dynamic e) => e.toString())
          .toList(),
      paymentCards: (snap['paymentCards'] as List)
          .map((dynamic card) =>
              PaymentMethod.fromSnapShot(card as Map<String, dynamic>))
          .toList(),
      favoriteDoctors: (snap['favoriteDoctors'] as List)
          .map((dynamic specialist) =>
              Doctor.fromSnapShot(specialist as Map<String, dynamic>))
          .toList(),
      sessions: (snap['sessions'] as List)
          .map((dynamic session) =>
              Session.fromMap(session as Map<String, dynamic>))
          .toList(),
    );

    return user;
  }
  Map<String, Object> toDocument() {
    return {
      'userId': userId,
      'firstName': firstName,
      'lastName': lastName,
      'profileImage': profileImage,
      'phoneNumber': phoneNumber,
      'email': email,
      'pinCode': pinCode,
      'dateOfBirth': dateOfBirth,
      'userCondition': userCondition ?? <String>[],
      'relationship': relationship ?? <String>[],
      'paymentCards': paymentCards?.map((card) => card.toDocument()).toList() ??
          <PaymentMethod>[],
      'favoriteDoctors': favoriteDoctors ?? <Doctor>[],
      'sessions': sessions ?? <Session>[],
    };
  }

  @override
  List<Object?> get props => [
        userId,
        firstName,
        lastName,
        profileImage,
        phoneNumber,
        email,
        dateOfBirth,
        userCondition,
        paymentCards,
        relationship,
        pinCode,
        favoriteDoctors,
        sessions,
      ];

  CurrentUser copyWith({
    String? userId,
    String? firstName,
    String? lastName,
    String? profileImage,
    String? phoneNumber,
    String? dateOfBirth,
    String? email,
    String? pinCode,
    List<String>? userCondition,
    List<String>? relationship,
    List<PaymentMethod>? paymentCards,
    List<Doctor>? favoriteDoctors,
    List<Session>? sessions,
  }) {
    return CurrentUser(
      userId: userId ?? this.userId,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      profileImage: profileImage ?? this.profileImage,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      email: email ?? this.email,
      pinCode: pinCode ?? this.pinCode,
      userCondition: userCondition ?? this.userCondition,
      relationship: relationship ?? this.relationship,
      paymentCards: paymentCards ?? this.paymentCards,
      favoriteDoctors: favoriteDoctors ?? this.favoriteDoctors,
      sessions: sessions ?? this.sessions,
    );
  }
}
