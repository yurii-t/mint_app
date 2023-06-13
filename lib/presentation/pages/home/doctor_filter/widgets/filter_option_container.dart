import 'package:flutter/material.dart';
import 'package:mint_app/theme/app_colors.dart';

class FilterOptionContainer extends StatelessWidget {
  const FilterOptionContainer({
    required this.value,
    required this.text,
    required this.onSelect,
    Key? key,
  }) : super(key: key);
  final bool value;
  final String text;
  final Function(String) onSelect;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelect(text);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: value ? Border.all(color: AppColors.blue) : null,
        ),
        child: Row(
          children: [
            Text(text),
            const Spacer(),
            SizedBox(
              width: 24,
              height: 24,
              child: Checkbox(
                activeColor: AppColors.blue,
                shape: const CircleBorder(),
                splashRadius: 0,
                value: this.value,
                onChanged: (newValue) {
                  onSelect(text);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
