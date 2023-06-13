import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class NotificaationPage extends StatefulWidget {
  const NotificaationPage({super.key});

  @override
  State<NotificaationPage> createState() => _NotificaationPageState();
}

class _NotificaationPageState extends State<NotificaationPage> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.background,
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        backgroundColor: AppColors.background,
        leadingWidth: 100,
        leading: GestureDetector(
          onTap: () {
            context.router.pop();
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.chevron_left,
                color: Colors.black,
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
        padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.inAppNotifications,
              style: AppTextStyles.boldNormal,
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.w),
              ),
              child: Row(
                children: [
                  Text(
                    l10n.getNotifications,
                    style: AppTextStyles.regularText.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  CupertinoSwitch(
                    activeColor: AppColors.blue,
                    value: switchValue,
                    onChanged: (value) {
                      setState(() {
                        switchValue = value;
                      });
                    },
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
