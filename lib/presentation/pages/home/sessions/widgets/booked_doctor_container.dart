import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mint_app/data/data.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class BookedDoctorContainer extends StatelessWidget {
  const BookedDoctorContainer({
    required this.doctor,
    required this.bookedDateTime,
    super.key,
  });
  final Doctor doctor;
  final DateTime bookedDateTime;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.w),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 39.h,
                width: 39.w,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(10.w),
                ),
                child: doctor.profileImage.isNotEmpty
                    ? Image.network(
                        doctor.profileImage,
                        fit: BoxFit.contain,
                      )
                    : const SizedBox.shrink(),
              ),
              SizedBox(
                width: 15.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          doctor.name,
                          style: AppTextStyles.boldNormal,
                        ),
                        const Spacer(),
                        Text(
                          '₴${doctor.price} ',
                          style: AppTextStyles.boldNormal,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      '${doctor.position}',
                      style: AppTextStyles.regularTextGrey
                          .copyWith(color: AppColors.textGrey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          const Divider(
            thickness: 1,
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            children: [
              Text(
                l10n.date,
                style: AppTextStyles.regularTextGrey
                    .copyWith(color: AppColors.textGrey),
              ),
              const Spacer(),
              Text(
                DateFormat('MMM d, yyyy').format(bookedDateTime),
                style: AppTextStyles.regularText.copyWith(
                  fontSize: 13.h,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Text(
                l10n.time,
                style: AppTextStyles.regularTextGrey
                    .copyWith(color: AppColors.textGrey),
              ),
              const Spacer(),
              Text(
                ' ${DateFormat('HH:mm').format(bookedDateTime)} - ${DateFormat('HH:mm a').format(DateTime(
                  bookedDateTime.year,
                  bookedDateTime.month,
                  bookedDateTime.day,
                  bookedDateTime.hour,
                  bookedDateTime.minute + 30,
                ))}',
                style: AppTextStyles.regularText.copyWith(
                  fontSize: 13.h,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
