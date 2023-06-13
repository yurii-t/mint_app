import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class InfoTextField extends StatefulWidget {
  const InfoTextField({
    required this.hint,
    required this.onConfirm,
    this.readOnly = false,
    super.key,
  });
  final String hint;
  final Function(String) onConfirm;
  final bool readOnly;

  @override
  State<InfoTextField> createState() => _InfoTextFieldState();
}

class _InfoTextFieldState extends State<InfoTextField> {
  final textController = TextEditingController();
  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(
        top: 10,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      height: 50.h,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: TextFormField(
        readOnly: widget.readOnly,
        onFieldSubmitted: widget.onConfirm,
        controller: textController,
        style: AppTextStyles.regularText.copyWith(fontSize: 15),
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hint,
          hintStyle: AppTextStyles.regularTextGrey.copyWith(fontSize: 15),
          counter: const SizedBox.shrink(),
        ),
        maxLength: 300,
        minLines: 1,
        maxLines: 10,
      ),
    );
  }
}
