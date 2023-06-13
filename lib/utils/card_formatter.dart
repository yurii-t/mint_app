import 'package:flutter/services.dart';

class CardMaskedTextInputFormatter extends TextInputFormatter {
  final bool cardNumber;

  CardMaskedTextInputFormatter({
    this.cardNumber = true,
  });
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue previousValue,
    TextEditingValue nextValue,
  ) {
    final inputText = nextValue.text;

    if (nextValue.selection.baseOffset == 0) {
      return nextValue;
    }

    final bufferString = StringBuffer();
    final separatorLenght = cardNumber ? 4 : 2;
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      final nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue % separatorLenght == 0 &&
          nonZeroIndexValue != inputText.length) {
        cardNumber ? bufferString.write(' ') : bufferString.write('/');
      }
    }

    final string = bufferString.toString();

    return nextValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}
