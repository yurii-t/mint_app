import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class ThankYouPage extends StatelessWidget {
  const ThankYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 6, top: 8, bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              '😉',
              style: AppTextStyles.title.copyWith(fontSize: 51.sp),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text.rich(
              TextSpan(
                text: l10n.thanksForYour,
                style: AppTextStyles.title.copyWith(fontSize: 31.sp),
                children: [
                  TextSpan(
                    text: ' ${l10n.time}!',
                    style: AppTextStyles.title
                        .copyWith(color: AppColors.blue, fontSize: 31.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              l10n.yourFeedbackIsVeryValuable,
              textAlign: TextAlign.center,
              style: AppTextStyles.regularText.copyWith(
                fontSize: 17.sp,
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
              onPressed: context.router.pop,
            ),
          ],
        ),
      ),
    );
  }
}
