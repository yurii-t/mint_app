import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/pages/home/doctor_filter/widgets/filter_option_container.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class TherapyBeforeColumn extends StatefulWidget {
  const TherapyBeforeColumn({required this.therapyBeforeValue, Key? key})
      : super(key: key);
  final Function(String) therapyBeforeValue;

  @override
  State<TherapyBeforeColumn> createState() => _TherapyBeforeColumnState();
}

class _TherapyBeforeColumnState extends State<TherapyBeforeColumn> {
  final selectedValue = ValueNotifier<String>('');

  @override
  void dispose() {
    selectedValue.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;
    final List<String> optionValues = [
      l10n.yes,
      l10n.not,
    ];

    return Column(
      children: [
        Text(
          l10n.haveYouEverBeenToTherapyBefore,
          style: AppTextStyles.boldNormal.copyWith(fontSize: 20),
        ),
        SizedBox(
          height: 16.h,
        ),
        for (final currentValue in optionValues)
          ValueListenableBuilder(
            valueListenable: selectedValue,
            builder: (context, val, child) {
              return Padding(
                padding: const EdgeInsets.only(top: 4, bottom: 4),
                child: FilterOptionContainer(
                  value: selectedValue.value == currentValue,
                  text: currentValue,
                  onSelect: (newValue) {
                    selectedValue.value = newValue;
                    widget.therapyBeforeValue(newValue);
                  },
                ),
              );
            },
          ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
