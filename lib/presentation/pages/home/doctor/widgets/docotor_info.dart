// ignore_for_file: deprecated_member_use_from_same_package

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/data/data.dart';
import 'package:mint_app/gen/assets.gen.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({required this.doctor, super.key});
  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                doctor.name,
                style: AppTextStyles.boldNormal.copyWith(fontSize: 20),
              ),
              const Spacer(),
              Column(
                children: [
                  Text(
                    '₴${doctor.price}',
                    style: AppTextStyles.regularText,
                  ),
                  Text(
                    l10n.perVisit,
                    style: AppTextStyles.regularTextGrey,
                  ),
                ],
              ),
            ],
          ),
          Text(
            '${doctor.position}, ${doctor.experience} ${doctor.experience > 1 ? l10n.years : l10n.year}',
            style: AppTextStyles.regularTextGrey.copyWith(fontSize: 15),
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            children: [
              const $AssetsIconsGen().filledStar.svg(color: AppColors.blue),
              SizedBox(
                width: 6.w,
              ),
              Text(
                doctor.rating.toStringAsFixed(1),
                style: AppTextStyles.regularText.copyWith(fontSize: 13),
              ),
              SizedBox(
                width: 6.w,
              ),
              Text(
                '(${doctor.reviews.length})',
                style: AppTextStyles.regularTextGrey.copyWith(fontSize: 13),
              ),
            ],
          ),
          SizedBox(
            height: 23.h,
          ),
          Text(
            l10n.specialization,
            style: AppTextStyles.boldNormal,
          ),
          SizedBox(
            height: 8.h,
          ),
          Wrap(
            spacing: 4,
            runSpacing: 4,
            children: [
              for (final specialization in doctor.specialization)
                Chip(
                  labelPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  label: Text(
                    specialization,
                    style: AppTextStyles.regularText.copyWith(fontSize: 15.h),
                  ),
                  backgroundColor: AppColors.specChipBackground,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
