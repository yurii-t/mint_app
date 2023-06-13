import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class OptionContainer extends StatelessWidget {
  const OptionContainer({
    required this.onTap,
    required this.icon,
    required this.text,
    this.margin,
    this.isChevronIconActice = true,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.padding = const EdgeInsets.all(16),
    super.key,
  });
  final VoidCallback onTap;
  final Widget icon;
  final String text;
  final bool isChevronIconActice;
  final Color textColor;
  final EdgeInsetsGeometry? margin;
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: margin ?? EdgeInsets.zero,
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8.w),
        ),
        child: Row(
          children: [
            icon,
            SizedBox(
              width: 6.w,
            ),
            Text(
              text,
              style: AppTextStyles.regularText.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
            const Spacer(),
            if (isChevronIconActice)
              const Icon(Icons.chevron_right)
            else
              const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
