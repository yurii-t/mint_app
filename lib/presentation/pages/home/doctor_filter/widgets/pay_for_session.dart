import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint_app/data/enums/filter_price.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/pages/home/doctor_filter/widgets/filter_option_container.dart';
import 'package:mint_app/theme/app_text_styles.dart';

class PayForSessionColumn extends StatefulWidget {
  const PayForSessionColumn({required this.priceValue, Key? key})
      : super(key: key);
  final Function(String) priceValue;

  @override
  State<PayForSessionColumn> createState() => _PayForSessionColumnState();
}

class _PayForSessionColumnState extends State<PayForSessionColumn> {
  String priceValue = '';

  final selectedValue = ValueNotifier<String>('');
  final List<String> priceOptionValues = [
    FilterPrice.upTo1000Value.toStringValue,
    FilterPrice.from500To1000Value.toStringValue,
    FilterPrice.from1000To2000Value.toStringValue,
    FilterPrice.moreThan2000Value.toStringValue,
  ];

  @override
  void dispose() {
    selectedValue.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    return Column(
      children: [
        Text(
          l10n.howMuchCanIPayForSession,
          style: AppTextStyles.boldNormal.copyWith(fontSize: 20),
        ),
        SizedBox(
          height: 16.h,
        ),
        for (final currentValue in priceOptionValues)
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
                    widget.priceValue(newValue);
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
