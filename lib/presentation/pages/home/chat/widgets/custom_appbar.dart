import 'package:flutter/material.dart';
import 'package:mint_app/theme/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    required this.widgetleft,
    required this.widgetCenter,
    required this.widgetRight,
    Key? key,
  }) : super(key: key);
  final Widget widgetleft;
  final Widget widgetCenter;
  final Widget widgetRight;
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.background,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widgetleft,
          widgetCenter,
          widgetRight,
        ],
      ),
    );
  }
}
