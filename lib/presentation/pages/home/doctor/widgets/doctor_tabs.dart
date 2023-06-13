import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/data/data.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/pages/home/doctor/widgets/review_container.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class DoctorTabs extends StatefulWidget {
  const DoctorTabs({required this.doctor, super.key});
  final Doctor doctor;

  @override
  State<DoctorTabs> createState() => _DoctorTabsState();
}

class _DoctorTabsState extends State<DoctorTabs> {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    return DefaultTabController(
      length: 3,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TabBar(
              labelStyle: AppTextStyles.regularText,
              labelColor: Colors.black,
              unselectedLabelColor: AppColors.lightGrey,
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                  child: Text(l10n.about),
                ),
                Tab(
                  text: l10n.education,
                ),
                Tab(
                  text: l10n.reviews,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Flexible(
              child: TabBarView(
                children: [
                  Text(
                    widget.doctor.about,
                    style: AppTextStyles.regularText,
                  ),
                  Text(
                    widget.doctor.education,
                    style: AppTextStyles.regularText,
                  ),
                  ListView.builder(
                    reverse: true,
                    padding: EdgeInsets.zero,
                    itemCount: widget.doctor.reviews.length,
                    itemBuilder: (context, index) =>
                        ReviewContainer(review: widget.doctor.reviews[index]),
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
