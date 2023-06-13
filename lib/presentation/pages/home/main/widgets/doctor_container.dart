// ignore_for_file: avoid-non-null-assertion, deprecated_member_use_from_same_package
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/data/data.dart';
import 'package:mint_app/gen/assets.gen.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/pages/home/main/widgets/like_button.dart';
import 'package:mint_app/routes/app_router.gr.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class DoctorContainer extends StatelessWidget {
  const DoctorContainer({
    required this.doctor,
    this.backgroundColor = Colors.white,
    this.isSettings = false,
    super.key,
  });
  final Doctor? doctor;
  final Color backgroundColor;
  final bool isSettings;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;
    final _doctor = doctor ??
        const Doctor(
          id: '0',
          name: '',
          profileImage: '',
          position: '',
          experience: 0,
          rating: 0,
          reviewsCount: 0,
          price: 0,
          specialization: [],
          about: '',
          education: '',
          reviews: [],
        );

    return GestureDetector(
      onTap: () {
        context.router.push(DoctorRoute(doctor: doctor!));
      },
      child: Container(
        color: backgroundColor,
        width: MediaQuery.of(context).size.width,
        height: 106.h,
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 84.h,
              width: 84.w,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(10.w),
              ),
              child: _doctor.profileImage.isNotEmpty
                  ? Image.network(
                      _doctor.profileImage,
                      fit: BoxFit.contain,
                    )
                  : const SizedBox.shrink(),
            ),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 11.h,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _doctor.name,
                        style: AppTextStyles.boldNormal,
                      ),
                      const Spacer(),
                      LikeButton(
                        doctor: _doctor,
                        isSettings: isSettings,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    '${_doctor.position},  ${_doctor.experience > 1 ? '${_doctor.experience} ${l10n.years}' : '${_doctor.experience} ${l10n.year}'}',
                    style: AppTextStyles.regularTextGrey
                        .copyWith(color: AppColors.textGrey),
                  ),
                  Expanded(
                    child: Row(
                      children: [
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
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 2.5),
                          onRatingUpdate: (rating) => rating,
                          updateOnDrag: false,
                          ignoreGestures: true,
                          initialRating: doctor?.rating.toDouble() ?? 0,
                          itemSize: 20,
                          allowHalfRating: true,
                        ),
                        const Spacer(),
                        Text(
                          '₴${_doctor.price} ',
                          style: AppTextStyles.boldNormal,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
