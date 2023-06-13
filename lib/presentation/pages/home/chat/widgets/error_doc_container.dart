import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ErrorDocContainer extends StatelessWidget {
  const ErrorDocContainer({
    required this.color,
    required this.time,
    required this.textColor,
    required this.subTextColor,
    required this.border,
    required this.docSize,
    required this.docName,
    required this.uploadValue,
    required this.uploadString,
    required this.seen,
    required this.errorBorder,
    Key? key,
  }) : super(key: key);
  final Color color;
  final BorderRadius border;
  final String time;
  final Color textColor;
  final Color subTextColor;
  final Color errorBorder;
  final bool seen;

  final String docSize;
  final String docName;
  final num uploadValue;
  final String uploadString;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: border,
        border: Border.all(color: errorBorder),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        leading: SvgPicture.asset('assets/icons/open_doc.svg'),
        title: Text(
          docName,
          style: TextStyle(
            fontSize: 15,
            color: textColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Row(
          children: [
            Expanded(
              child: Text(
                docSize,
                style: TextStyle(
                  fontSize: 12,
                  color: subTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  '$time',
                  style: TextStyle(
                    fontSize: 12,
                    color: subTextColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                if (seen)
                  SvgPicture.asset('assets/icons/message_checks.svg')
                else
                  const Text(''),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
