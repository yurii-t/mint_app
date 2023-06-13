enum FilterPrice {
  upTo1000Value,
  from500To1000Value,
  from1000To2000Value,
  moreThan2000Value,
}

extension FilterPriceExtension on FilterPrice {
  String get toStringValue {
    switch (this) {
      case FilterPrice.upTo1000Value:
        return 'Up to 1000₴';
      case FilterPrice.from500To1000Value:
        return '500-1000₴';
      case FilterPrice.from1000To2000Value:
        return '1000-2000₴';
      case FilterPrice.moreThan2000Value:
        return 'More than 2000₴';
    }
  }
}
