// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:mint_app/data/data.dart';

class Doctor extends Equatable {
  final String id;
  final String name;
  final String profileImage;
  final String position;
  final num experience;
  final num rating;
  final num reviewsCount;
  final num price;
  final List<String> specialization;
  final String about;
  final String education;
  final List<Review> reviews;

  const Doctor({
    required this.id,
    required this.name,
    required this.profileImage,
    required this.position,
    required this.experience,
    required this.rating,
    required this.reviewsCount,
    required this.price,
    required this.specialization,
    required this.about,
    required this.education,
    required this.reviews,
  });

  Doctor copyWith({
    String? id,
    String? name,
    String? profileImage,
    String? position,
    num? experience,
    num? rating,
    num? reviewsCount,
    num? price,
    List<String>? specialization,
    String? about,
    String? education,
    List<Review>? reviews,
  }) {
    return Doctor(
      id: id ?? this.id,
      name: name ?? this.name,
      profileImage: profileImage ?? this.profileImage,
      position: position ?? this.position,
      experience: experience ?? this.experience,
      rating: rating ?? this.rating,
      reviewsCount: reviewsCount ?? this.reviewsCount,
      price: price ?? this.price,
      specialization: specialization ?? this.specialization,
      about: about ?? this.about,
      education: education ?? this.education,
      reviews: reviews ?? this.reviews,
    );
  }

  @override
  List<Object> get props {
    return [
      id,
      name,
      profileImage,
      position,
      experience,
      rating,
      reviewsCount,
      price,
      specialization,
      about,
      education,
      reviews,
    ];
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'profileImage': profileImage,
      'position': position,
      'experience': experience,
      'rating': rating,
      'reviewsCount': reviewsCount,
      'price': price,
      'specialization': specialization,
      'about': about,
      'education': education,
      'reviews': reviews.map((x) => x.toDocument()).toList(),
    };
  }

  factory Doctor.fromSnapShot(Map<String, dynamic> map) {
    final reviewCount = map['reviews'] as List<dynamic>;
    final reviewsList = (map['reviews'] as List)
        // ignore: avoid_annotating_with_dynamic
        .map((dynamic review) =>
            Review.fromSnapShot(review as Map<String, dynamic>))
        .toList();
    final ratingCalc = reviewsList.fold<double>(
          0,
          (previousValue, element) => previousValue + element.rating,
        ) /
        reviewsList.length;

    return Doctor(
      id: map['id'] as String,
      name: map['name'] as String,
      profileImage: map['profileImage'] as String,
      position: map['position'] as String,
      experience: map['experience'] as num,
      rating: ratingCalc,
      reviewsCount: reviewCount.length,
      price: map['price'] as num,
      specialization: List<String>.from(map['specialization'] as List<dynamic>),
      about: map['about'] as String,
      education: map['education'] as String,
      reviews: reviewsList,
    );
  }

  String toJson() => json.encode(toMap());
}
