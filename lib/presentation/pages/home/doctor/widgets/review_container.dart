// ignore_for_file: deprecated_member_use_from_same_package

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mint_app/data/models/review.dart';
import 'package:mint_app/gen/assets.gen.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class ReviewContainer extends StatelessWidget {
  const ReviewContainer({required this.review, super.key});
  final Review review;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: review.profileImage != ''
                    ? NetworkImage(review.profileImage)
                    : null,
              ),
              SizedBox(
                width: 8.w,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    review.name,
                    style: AppTextStyles.regularText,
                  ),
                  RatingBar(
                    ratingWidget: RatingWidget(
                      full: const $AssetsIconsGen()
                          .filledStar
                          .svg(color: AppColors.blue),
                      half: const $AssetsIconsGen()
                          .filledHalfStar
                          .svg(color: AppColors.blue),
                      empty: const $AssetsIconsGen()
                          .star
                          .svg(color: AppColors.blue),
                    ),
                    glow: false,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 2.5),
                    onRatingUpdate: (rating) => rating,
                    updateOnDrag: false,
                    ignoreGestures: true,
                    initialRating: review.rating.toDouble(),
                    itemSize: 15,
                    allowHalfRating: true,
                  ),
                ],
              ),
              const Spacer(),
              Text(
                DateFormat('dd-MMM-yyy').format(
                  DateTime.fromMillisecondsSinceEpoch(
                    review.timeStamp.millisecondsSinceEpoch,
                  ),
                ),
                style: AppTextStyles.regularTextGrey,
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            review.textReview,
            style: AppTextStyles.regularText,
          ),
        ],
      ),
    );
  }
}
