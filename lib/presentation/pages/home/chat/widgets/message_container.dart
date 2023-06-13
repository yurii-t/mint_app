import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mint_app/theme/app_colors.dart';

class MessageContainer extends StatelessWidget {
  const MessageContainer({
    required this.time,
    required this.seen,
    this.text,
    this.color,
    this.border,
    this.messageColor,
    this.timeColor,
    this.timeChecsRow,
    this.maxWidth,
    this.errorBorder,
    Key? key,
  }) : super(key: key);
  final Color? color;
  final BorderRadius? border;
  final Color? messageColor;
  final Color? timeColor;
  final Widget? timeChecsRow;
  final double? maxWidth;
  final String? text;
  final String time;
  final bool seen;
  final Color? errorBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: maxWidth ?? 0.7,
      ),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: color ?? AppColors.blue,
        borderRadius: border ?? BorderRadius.circular(16),
        border: Border.all(color: errorBorder ?? Colors.transparent),
      ),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '$text  ',
                    style: TextStyle(
                      fontSize: 14,
                      color: messageColor ?? AppColors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const TextSpan(
                    text: '00:00:00',
                    style: TextStyle(
                      color: Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Row(
              children: [
                Text(
                  '$time  ',
                  style: TextStyle(
                    fontSize: 10,
                    color: timeColor ?? AppColors.textGrey,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                if (seen)
                  SvgPicture.asset('assets/icons/message_checks.svg')
                else
                  const Text(''),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
