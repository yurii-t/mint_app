// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Review extends Equatable {
  final String id;
  final String name;
  final String textReview;
  final String profileImage;
  final Timestamp timeStamp;
  final num rating;

  const Review({
    required this.id,
    required this.name,
    required this.textReview,
    required this.profileImage,
    required this.timeStamp,
    required this.rating,
  });

  @override
  List<Object> get props {
    return [
      id,
      name,
      textReview,
      profileImage,
      timeStamp,
      rating,
    ];
  }

  Map<String, dynamic> toDocument() {
    return <String, dynamic>{
      'id': id,
      'number': name,
      'name': name,
      'textReview': textReview,
      'profileImage': profileImage,
      'timeStamp': timeStamp,
      'rating': rating,
    };
  }

  factory Review.fromSnapShot(Map<String, dynamic> snap) {
    return Review(
      id: snap['id'] as String,
      name: snap['name'] as String,
      textReview: snap['textReview'] as String,
      profileImage: snap['profileImage'] as String,
      timeStamp: snap['timeStamp'] as Timestamp,
      rating: snap['rating'] as num,
    );
  }

  Review copyWith({
    String? id,
    String? name,
    String? textReview,
    String? profileImage,
    Timestamp? timeStamp,
    num? rating,
  }) {
    return Review(
      id: id ?? this.id,
      name: name ?? this.name,
      textReview: textReview ?? this.textReview,
      profileImage: profileImage ?? this.profileImage,
      timeStamp: timeStamp ?? this.timeStamp,
      rating: rating ?? this.rating,
    );
  }
}
