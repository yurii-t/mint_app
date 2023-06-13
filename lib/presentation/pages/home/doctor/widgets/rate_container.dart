// ignore_for_file: deprecated_member_use_from_same_package

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/gen/assets.gen.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/sessions/bloc/sessions_bloc.dart';
import 'package:mint_app/routes/app_router.gr.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class RateConatiner extends StatefulWidget {
  const RateConatiner({
    required this.doctorId,
    required this.sessionsBloc,
    super.key,
  });
  final String doctorId;
  final SessionsBloc sessionsBloc;

  @override
  State<RateConatiner> createState() => _RateConatinerState();
}

class _RateConatinerState extends State<RateConatiner> {
  final noteTextController = TextEditingController();

  double selectedRating = 0;

  @override
  void dispose() {
    noteTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    final Map<String, double> rateStringList = {
      l10n.helpful: 5,
      l10n.useful: 4.5,
      l10n.good: 4,
      l10n.poor: 3,
      l10n.notHelpful: 2,
      l10n.notRecommend: 1,
    };

    return Container(
      color: AppColors.background,
      height: MediaQuery.of(context).size.height * 0.95,
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            indent: 160,
            endIndent: 160,
            thickness: 4,
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close),
              ),
              Text(
                l10n.reviewSession,
                style: AppTextStyles.boldNormal,
              ),
              const Icon(
                Icons.close,
                color: Colors.transparent,
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            l10n.howWasYourConsultation,
            style: AppTextStyles.boldNormal.copyWith(fontSize: 15.h),
          ),
          SizedBox(
            height: 10.h,
          ),
          for (final rating in rateStringList.entries)
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedRating = rating.value;
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width.w,
                margin: EdgeInsets.only(
                  top: 6.h,
                  bottom: 6.h,
                ),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.h),
                  border: selectedRating == rating.value
                      ? Border.all(color: AppColors.blue)
                      : null,
                ),
                child: Row(
                  children: [
                    Text(rating.key),
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
                      initialRating: rating.value,
                      itemSize: 15,
                      allowHalfRating: true,
                    ),
                  ],
                ),
              ),
            ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            l10n.howWasYourConsultation,
            style: AppTextStyles.boldNormal.copyWith(fontSize: 15.h),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            height: 90.h,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.h),
            ),
            child: TextFormField(
              controller: noteTextController,
              style: AppTextStyles.regularText.copyWith(fontSize: 15),
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: l10n.typeHerePersonalImpressions,
                hintStyle: AppTextStyles.regularTextGrey.copyWith(fontSize: 15),
                counter: const SizedBox.shrink(),
              ),
              maxLength: 300,
              minLines: 1,
              maxLines: 10,
            ),
          ),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(MediaQuery.of(context).size.width, 50),
            ),
            child: Text(
              l10n.leaveReview,
              style: AppTextStyles.regularText.copyWith(color: Colors.white),
            ),
            onPressed: selectedRating > 0
                ? () {
                    widget.sessionsBloc.add(SessionsEvent.rateDoctor(
                      doctorId: widget.doctorId,
                      rating: selectedRating,
                      textReview: noteTextController.text,
                    ));
                    context.router.push(const ThankYouRoute());
                    context.router.pop();
                  }
                : null,
          ),
        ],
      ),
    );
  }
}
