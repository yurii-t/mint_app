import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import 'package:mint_app/data/models/doctor.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/pages/home/main/widgets/doctor_container.dart';
import 'package:mint_app/routes/app_router.gr.dart';
import 'package:mint_app/theme/app_colors.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class ConfirmBookingPage extends StatefulWidget {
  const ConfirmBookingPage({
    required this.doctor,
    required this.bookedDateTime,
    super.key,
  });

  final Doctor doctor;
  final DateTime bookedDateTime;

  @override
  State<ConfirmBookingPage> createState() => _ConfirmBookingPageState();
}

class _ConfirmBookingPageState extends State<ConfirmBookingPage> {
  final noteTextController = TextEditingController();

  @override
  void dispose() {
    noteTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    return Scaffold(
      backgroundColor: AppColors.background,
      resizeToAvoidBottomInset: false,
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
      body: Stack(
        children: [
          ListView(
            children: [
              DoctorContainer(
                doctor: widget.doctor,
                backgroundColor: Colors.transparent,
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  l10n.consultationSummary,
                  style: AppTextStyles.boldNormal,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.w),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text(
                          l10n.dateSpace,
                          style: AppTextStyles.regularText
                              .copyWith(fontSize: 16.h),
                        ),
                        const Spacer(),
                        Text(
                          DateFormat('dd.MM.yyyy')
                              .format(widget.bookedDateTime),
                          style: AppTextStyles.regularText.copyWith(
                            fontSize: 16.h,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    const Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        Text(
                          l10n.timeUppercase,
                          style: AppTextStyles.regularText
                              .copyWith(fontSize: 16.h),
                        ),
                        const Spacer(),
                        Text(
                          DateFormat('HH:mm').format(widget.bookedDateTime),
                          style: AppTextStyles.regularText.copyWith(
                            fontSize: 16.h,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    const Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        Text(
                          l10n.duration,
                          style: AppTextStyles.regularText
                              .copyWith(fontSize: 16.h),
                        ),
                        const Spacer(),
                        Text(
                          l10n.upToThirtyMin,
                          style: AppTextStyles.regularText.copyWith(
                            fontSize: 16.h,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                  left: 16,
                  right: 16,
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
                    hintText: l10n.typeHerePersonalNotes,
                    hintStyle:
                        AppTextStyles.regularTextGrey.copyWith(fontSize: 15),
                    counter: const SizedBox.shrink(),
                  ),
                  maxLength: 300,
                  minLines: 1,
                  maxLines: 10,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 30,
            left: 16,
            right: 16,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width, 50),
              ),
              child: Text(l10n.book),
              onPressed: () {
                context.router.push(CheckoutRoute(
                  doctor: widget.doctor,
                  bookedDateTime: widget.bookedDateTime,
                  notes: noteTextController.text,
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
