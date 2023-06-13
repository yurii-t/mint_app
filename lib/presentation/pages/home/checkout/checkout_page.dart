import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/data/data.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/pages/home/sessions/widgets/booked_doctor_container.dart';
import 'package:mint_app/routes/app_router.gr.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({
    required this.doctor,
    required this.bookedDateTime,
    required this.notes,
    super.key,
  });
  final Doctor doctor;
  final DateTime bookedDateTime;
  final String notes;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.background,
        leadingWidth: 86,
        leading: IconButton(
          onPressed: () {
            context.router.pop();
          },
          icon: Row(
            children: [
              const Icon(
                Icons.chevron_left,
                color: AppColors.black,
              ),
              Text(
                l10n.backButton,
                style: AppTextStyles.regularText,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BookedDoctorContainer(
              doctor: doctor,
              bookedDateTime: bookedDateTime,
            ),
            SizedBox(height: 24.h),
            Text(
              l10n.paymentDetails,
              style: AppTextStyles.boldNormal,
            ),
            SizedBox(height: 16.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\u2022',
                  style: AppTextStyles.regularText
                      .copyWith(color: AppColors.iconGrey.withOpacity(0.6)),
                ),
                SizedBox(
                  width: 6.w,
                ),
                Expanded(
                  child: Text(
                    l10n.afterPushingTheButtonPay,
                    style: AppTextStyles.regularText
                        .copyWith(color: const Color(0xFF4D4D52)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\u2022',
                  style: AppTextStyles.regularText
                      .copyWith(color: AppColors.iconGrey.withOpacity(0.6)),
                ),
                SizedBox(
                  width: 6.w,
                ),
                Expanded(
                  child: Text(
                    l10n.theMoneyWillBeWithdrawn,
                    style: AppTextStyles.regularText
                        .copyWith(color: const Color(0xFF4D4D52)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\u2022',
                  style: AppTextStyles.regularText
                      .copyWith(color: AppColors.iconGrey.withOpacity(0.6)),
                ),
                SizedBox(
                  width: 6.w,
                ),
                Expanded(
                  child: Text(
                    l10n.imprortantThatYouHaveStableConnection,
                    style: AppTextStyles.regularText
                        .copyWith(color: const Color(0xFF4D4D52)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\u2022',
                  style: AppTextStyles.regularText
                      .copyWith(color: AppColors.iconGrey.withOpacity(0.6)),
                ),
                SizedBox(
                  width: 6.w,
                ),
                Expanded(
                  child: Text(
                    l10n.signedUpForSession,
                    style: AppTextStyles.regularText
                        .copyWith(color: const Color(0xFF4D4D52)),
                  ),
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width, 50),
              ),
              child: Text(l10n.pay),
              onPressed: () {
                context.router.push(PaymentRoute(
                  doctor: doctor,
                  bookedDateTime: bookedDateTime,
                  notes: notes,
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
