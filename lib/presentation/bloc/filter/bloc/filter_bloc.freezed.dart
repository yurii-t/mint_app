// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFilter,
    required TResult Function(num startPrice, num endPrice) changePrice,
    required TResult Function(String experience) selectExperience,
    required TResult Function(String selectedSeciality) selectSpecialities,
    required TResult Function() clearFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFilter,
    TResult? Function(num startPrice, num endPrice)? changePrice,
    TResult? Function(String experience)? selectExperience,
    TResult? Function(String selectedSeciality)? selectSpecialities,
    TResult? Function()? clearFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFilter,
    TResult Function(num startPrice, num endPrice)? changePrice,
    TResult Function(String experience)? selectExperience,
    TResult Function(String selectedSeciality)? selectSpecialities,
    TResult Function()? clearFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFilter value) loadFilter,
    required TResult Function(_ChangePrice value) changePrice,
    required TResult Function(_SelectExperience value) selectExperience,
    required TResult Function(_SelectSpecialities value) selectSpecialities,
    required TResult Function(_ClearFilter value) clearFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFilter value)? loadFilter,
    TResult? Function(_ChangePrice value)? changePrice,
    TResult? Function(_SelectExperience value)? selectExperience,
    TResult? Function(_SelectSpecialities value)? selectSpecialities,
    TResult? Function(_ClearFilter value)? clearFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFilter value)? loadFilter,
    TResult Function(_ChangePrice value)? changePrice,
    TResult Function(_SelectExperience value)? selectExperience,
    TResult Function(_SelectSpecialities value)? selectSpecialities,
    TResult Function(_ClearFilter value)? clearFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterEventCopyWith<$Res> {
  factory $FilterEventCopyWith(
          FilterEvent value, $Res Function(FilterEvent) then) =
      _$FilterEventCopyWithImpl<$Res, FilterEvent>;
}

/// @nodoc
class _$FilterEventCopyWithImpl<$Res, $Val extends FilterEvent>
    implements $FilterEventCopyWith<$Res> {
  _$FilterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadFilterCopyWith<$Res> {
  factory _$$_LoadFilterCopyWith(
          _$_LoadFilter value, $Res Function(_$_LoadFilter) then) =
      __$$_LoadFilterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadFilterCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$_LoadFilter>
    implements _$$_LoadFilterCopyWith<$Res> {
  __$$_LoadFilterCopyWithImpl(
      _$_LoadFilter _value, $Res Function(_$_LoadFilter) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadFilter implements _LoadFilter {
  const _$_LoadFilter();

  @override
  String toString() {
    return 'FilterEvent.loadFilter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadFilter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFilter,
    required TResult Function(num startPrice, num endPrice) changePrice,
    required TResult Function(String experience) selectExperience,
    required TResult Function(String selectedSeciality) selectSpecialities,
    required TResult Function() clearFilter,
  }) {
    return loadFilter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFilter,
    TResult? Function(num startPrice, num endPrice)? changePrice,
    TResult? Function(String experience)? selectExperience,
    TResult? Function(String selectedSeciality)? selectSpecialities,
    TResult? Function()? clearFilter,
  }) {
    return loadFilter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFilter,
    TResult Function(num startPrice, num endPrice)? changePrice,
    TResult Function(String experience)? selectExperience,
    TResult Function(String selectedSeciality)? selectSpecialities,
    TResult Function()? clearFilter,
    required TResult orElse(),
  }) {
    if (loadFilter != null) {
      return loadFilter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFilter value) loadFilter,
    required TResult Function(_ChangePrice value) changePrice,
    required TResult Function(_SelectExperience value) selectExperience,
    required TResult Function(_SelectSpecialities value) selectSpecialities,
    required TResult Function(_ClearFilter value) clearFilter,
  }) {
    return loadFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFilter value)? loadFilter,
    TResult? Function(_ChangePrice value)? changePrice,
    TResult? Function(_SelectExperience value)? selectExperience,
    TResult? Function(_SelectSpecialities value)? selectSpecialities,
    TResult? Function(_ClearFilter value)? clearFilter,
  }) {
    return loadFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFilter value)? loadFilter,
    TResult Function(_ChangePrice value)? changePrice,
    TResult Function(_SelectExperience value)? selectExperience,
    TResult Function(_SelectSpecialities value)? selectSpecialities,
    TResult Function(_ClearFilter value)? clearFilter,
    required TResult orElse(),
  }) {
    if (loadFilter != null) {
      return loadFilter(this);
    }
    return orElse();
  }
}

abstract class _LoadFilter implements FilterEvent {
  const factory _LoadFilter() = _$_LoadFilter;
}

/// @nodoc
abstract class _$$_ChangePriceCopyWith<$Res> {
  factory _$$_ChangePriceCopyWith(
          _$_ChangePrice value, $Res Function(_$_ChangePrice) then) =
      __$$_ChangePriceCopyWithImpl<$Res>;
  @useResult
  $Res call({num startPrice, num endPrice});
}

/// @nodoc
class __$$_ChangePriceCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$_ChangePrice>
    implements _$$_ChangePriceCopyWith<$Res> {
  __$$_ChangePriceCopyWithImpl(
      _$_ChangePrice _value, $Res Function(_$_ChangePrice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startPrice = null,
    Object? endPrice = null,
  }) {
    return _then(_$_ChangePrice(
      startPrice: null == startPrice
          ? _value.startPrice
          : startPrice // ignore: cast_nullable_to_non_nullable
              as num,
      endPrice: null == endPrice
          ? _value.endPrice
          : endPrice // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$_ChangePrice implements _ChangePrice {
  const _$_ChangePrice({required this.startPrice, required this.endPrice});

  @override
  final num startPrice;
  @override
  final num endPrice;

  @override
  String toString() {
    return 'FilterEvent.changePrice(startPrice: $startPrice, endPrice: $endPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePrice &&
            (identical(other.startPrice, startPrice) ||
                other.startPrice == startPrice) &&
            (identical(other.endPrice, endPrice) ||
                other.endPrice == endPrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startPrice, endPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePriceCopyWith<_$_ChangePrice> get copyWith =>
      __$$_ChangePriceCopyWithImpl<_$_ChangePrice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFilter,
    required TResult Function(num startPrice, num endPrice) changePrice,
    required TResult Function(String experience) selectExperience,
    required TResult Function(String selectedSeciality) selectSpecialities,
    required TResult Function() clearFilter,
  }) {
    return changePrice(startPrice, endPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFilter,
    TResult? Function(num startPrice, num endPrice)? changePrice,
    TResult? Function(String experience)? selectExperience,
    TResult? Function(String selectedSeciality)? selectSpecialities,
    TResult? Function()? clearFilter,
  }) {
    return changePrice?.call(startPrice, endPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFilter,
    TResult Function(num startPrice, num endPrice)? changePrice,
    TResult Function(String experience)? selectExperience,
    TResult Function(String selectedSeciality)? selectSpecialities,
    TResult Function()? clearFilter,
    required TResult orElse(),
  }) {
    if (changePrice != null) {
      return changePrice(startPrice, endPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFilter value) loadFilter,
    required TResult Function(_ChangePrice value) changePrice,
    required TResult Function(_SelectExperience value) selectExperience,
    required TResult Function(_SelectSpecialities value) selectSpecialities,
    required TResult Function(_ClearFilter value) clearFilter,
  }) {
    return changePrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFilter value)? loadFilter,
    TResult? Function(_ChangePrice value)? changePrice,
    TResult? Function(_SelectExperience value)? selectExperience,
    TResult? Function(_SelectSpecialities value)? selectSpecialities,
    TResult? Function(_ClearFilter value)? clearFilter,
  }) {
    return changePrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFilter value)? loadFilter,
    TResult Function(_ChangePrice value)? changePrice,
    TResult Function(_SelectExperience value)? selectExperience,
    TResult Function(_SelectSpecialities value)? selectSpecialities,
    TResult Function(_ClearFilter value)? clearFilter,
    required TResult orElse(),
  }) {
    if (changePrice != null) {
      return changePrice(this);
    }
    return orElse();
  }
}

abstract class _ChangePrice implements FilterEvent {
  const factory _ChangePrice(
      {required final num startPrice,
      required final num endPrice}) = _$_ChangePrice;

  num get startPrice;
  num get endPrice;
  @JsonKey(ignore: true)
  _$$_ChangePriceCopyWith<_$_ChangePrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectExperienceCopyWith<$Res> {
  factory _$$_SelectExperienceCopyWith(
          _$_SelectExperience value, $Res Function(_$_SelectExperience) then) =
      __$$_SelectExperienceCopyWithImpl<$Res>;
  @useResult
  $Res call({String experience});
}

/// @nodoc
class __$$_SelectExperienceCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$_SelectExperience>
    implements _$$_SelectExperienceCopyWith<$Res> {
  __$$_SelectExperienceCopyWithImpl(
      _$_SelectExperience _value, $Res Function(_$_SelectExperience) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? experience = null,
  }) {
    return _then(_$_SelectExperience(
      experience: null == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectExperience implements _SelectExperience {
  const _$_SelectExperience({required this.experience});

  @override
  final String experience;

  @override
  String toString() {
    return 'FilterEvent.selectExperience(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectExperience &&
            (identical(other.experience, experience) ||
                other.experience == experience));
  }

  @override
  int get hashCode => Object.hash(runtimeType, experience);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectExperienceCopyWith<_$_SelectExperience> get copyWith =>
      __$$_SelectExperienceCopyWithImpl<_$_SelectExperience>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFilter,
    required TResult Function(num startPrice, num endPrice) changePrice,
    required TResult Function(String experience) selectExperience,
    required TResult Function(String selectedSeciality) selectSpecialities,
    required TResult Function() clearFilter,
  }) {
    return selectExperience(experience);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFilter,
    TResult? Function(num startPrice, num endPrice)? changePrice,
    TResult? Function(String experience)? selectExperience,
    TResult? Function(String selectedSeciality)? selectSpecialities,
    TResult? Function()? clearFilter,
  }) {
    return selectExperience?.call(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFilter,
    TResult Function(num startPrice, num endPrice)? changePrice,
    TResult Function(String experience)? selectExperience,
    TResult Function(String selectedSeciality)? selectSpecialities,
    TResult Function()? clearFilter,
    required TResult orElse(),
  }) {
    if (selectExperience != null) {
      return selectExperience(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFilter value) loadFilter,
    required TResult Function(_ChangePrice value) changePrice,
    required TResult Function(_SelectExperience value) selectExperience,
    required TResult Function(_SelectSpecialities value) selectSpecialities,
    required TResult Function(_ClearFilter value) clearFilter,
  }) {
    return selectExperience(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFilter value)? loadFilter,
    TResult? Function(_ChangePrice value)? changePrice,
    TResult? Function(_SelectExperience value)? selectExperience,
    TResult? Function(_SelectSpecialities value)? selectSpecialities,
    TResult? Function(_ClearFilter value)? clearFilter,
  }) {
    return selectExperience?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFilter value)? loadFilter,
    TResult Function(_ChangePrice value)? changePrice,
    TResult Function(_SelectExperience value)? selectExperience,
    TResult Function(_SelectSpecialities value)? selectSpecialities,
    TResult Function(_ClearFilter value)? clearFilter,
    required TResult orElse(),
  }) {
    if (selectExperience != null) {
      return selectExperience(this);
    }
    return orElse();
  }
}

abstract class _SelectExperience implements FilterEvent {
  const factory _SelectExperience({required final String experience}) =
      _$_SelectExperience;

  String get experience;
  @JsonKey(ignore: true)
  _$$_SelectExperienceCopyWith<_$_SelectExperience> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectSpecialitiesCopyWith<$Res> {
  factory _$$_SelectSpecialitiesCopyWith(_$_SelectSpecialities value,
          $Res Function(_$_SelectSpecialities) then) =
      __$$_SelectSpecialitiesCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedSeciality});
}

/// @nodoc
class __$$_SelectSpecialitiesCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$_SelectSpecialities>
    implements _$$_SelectSpecialitiesCopyWith<$Res> {
  __$$_SelectSpecialitiesCopyWithImpl(
      _$_SelectSpecialities _value, $Res Function(_$_SelectSpecialities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSeciality = null,
  }) {
    return _then(_$_SelectSpecialities(
      selectedSeciality: null == selectedSeciality
          ? _value.selectedSeciality
          : selectedSeciality // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectSpecialities implements _SelectSpecialities {
  const _$_SelectSpecialities({required this.selectedSeciality});

  @override
  final String selectedSeciality;

  @override
  String toString() {
    return 'FilterEvent.selectSpecialities(selectedSeciality: $selectedSeciality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectSpecialities &&
            (identical(other.selectedSeciality, selectedSeciality) ||
                other.selectedSeciality == selectedSeciality));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedSeciality);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectSpecialitiesCopyWith<_$_SelectSpecialities> get copyWith =>
      __$$_SelectSpecialitiesCopyWithImpl<_$_SelectSpecialities>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFilter,
    required TResult Function(num startPrice, num endPrice) changePrice,
    required TResult Function(String experience) selectExperience,
    required TResult Function(String selectedSeciality) selectSpecialities,
    required TResult Function() clearFilter,
  }) {
    return selectSpecialities(selectedSeciality);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFilter,
    TResult? Function(num startPrice, num endPrice)? changePrice,
    TResult? Function(String experience)? selectExperience,
    TResult? Function(String selectedSeciality)? selectSpecialities,
    TResult? Function()? clearFilter,
  }) {
    return selectSpecialities?.call(selectedSeciality);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFilter,
    TResult Function(num startPrice, num endPrice)? changePrice,
    TResult Function(String experience)? selectExperience,
    TResult Function(String selectedSeciality)? selectSpecialities,
    TResult Function()? clearFilter,
    required TResult orElse(),
  }) {
    if (selectSpecialities != null) {
      return selectSpecialities(selectedSeciality);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFilter value) loadFilter,
    required TResult Function(_ChangePrice value) changePrice,
    required TResult Function(_SelectExperience value) selectExperience,
    required TResult Function(_SelectSpecialities value) selectSpecialities,
    required TResult Function(_ClearFilter value) clearFilter,
  }) {
    return selectSpecialities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFilter value)? loadFilter,
    TResult? Function(_ChangePrice value)? changePrice,
    TResult? Function(_SelectExperience value)? selectExperience,
    TResult? Function(_SelectSpecialities value)? selectSpecialities,
    TResult? Function(_ClearFilter value)? clearFilter,
  }) {
    return selectSpecialities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFilter value)? loadFilter,
    TResult Function(_ChangePrice value)? changePrice,
    TResult Function(_SelectExperience value)? selectExperience,
    TResult Function(_SelectSpecialities value)? selectSpecialities,
    TResult Function(_ClearFilter value)? clearFilter,
    required TResult orElse(),
  }) {
    if (selectSpecialities != null) {
      return selectSpecialities(this);
    }
    return orElse();
  }
}

abstract class _SelectSpecialities implements FilterEvent {
  const factory _SelectSpecialities({required final String selectedSeciality}) =
      _$_SelectSpecialities;

  String get selectedSeciality;
  @JsonKey(ignore: true)
  _$$_SelectSpecialitiesCopyWith<_$_SelectSpecialities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearFilterCopyWith<$Res> {
  factory _$$_ClearFilterCopyWith(
          _$_ClearFilter value, $Res Function(_$_ClearFilter) then) =
      __$$_ClearFilterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearFilterCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$_ClearFilter>
    implements _$$_ClearFilterCopyWith<$Res> {
  __$$_ClearFilterCopyWithImpl(
      _$_ClearFilter _value, $Res Function(_$_ClearFilter) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearFilter implements _ClearFilter {
  const _$_ClearFilter();

  @override
  String toString() {
    return 'FilterEvent.clearFilter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearFilter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFilter,
    required TResult Function(num startPrice, num endPrice) changePrice,
    required TResult Function(String experience) selectExperience,
    required TResult Function(String selectedSeciality) selectSpecialities,
    required TResult Function() clearFilter,
  }) {
    return clearFilter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFilter,
    TResult? Function(num startPrice, num endPrice)? changePrice,
    TResult? Function(String experience)? selectExperience,
    TResult? Function(String selectedSeciality)? selectSpecialities,
    TResult? Function()? clearFilter,
  }) {
    return clearFilter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFilter,
    TResult Function(num startPrice, num endPrice)? changePrice,
    TResult Function(String experience)? selectExperience,
    TResult Function(String selectedSeciality)? selectSpecialities,
    TResult Function()? clearFilter,
    required TResult orElse(),
  }) {
    if (clearFilter != null) {
      return clearFilter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFilter value) loadFilter,
    required TResult Function(_ChangePrice value) changePrice,
    required TResult Function(_SelectExperience value) selectExperience,
    required TResult Function(_SelectSpecialities value) selectSpecialities,
    required TResult Function(_ClearFilter value) clearFilter,
  }) {
    return clearFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFilter value)? loadFilter,
    TResult? Function(_ChangePrice value)? changePrice,
    TResult? Function(_SelectExperience value)? selectExperience,
    TResult? Function(_SelectSpecialities value)? selectSpecialities,
    TResult? Function(_ClearFilter value)? clearFilter,
  }) {
    return clearFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFilter value)? loadFilter,
    TResult Function(_ChangePrice value)? changePrice,
    TResult Function(_SelectExperience value)? selectExperience,
    TResult Function(_SelectSpecialities value)? selectSpecialities,
    TResult Function(_ClearFilter value)? clearFilter,
    required TResult orElse(),
  }) {
    if (clearFilter != null) {
      return clearFilter(this);
    }
    return orElse();
  }
}

abstract class _ClearFilter implements FilterEvent {
  const factory _ClearFilter() = _$_ClearFilter;
}

/// @nodoc
mixin _$FilterState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<String> get experienceList => throw _privateConstructorUsedError;
  List<String> get specialities => throw _privateConstructorUsedError;
  String get selectedExperience => throw _privateConstructorUsedError;
  List<String> get selectedSpecialities => throw _privateConstructorUsedError;
  num? get startPrice => throw _privateConstructorUsedError;
  num? get endPrice => throw _privateConstructorUsedError;
  num? get maxPrice => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterStateCopyWith<FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res, FilterState>;
  @useResult
  $Res call(
      {BlocStatus status,
      List<String> experienceList,
      List<String> specialities,
      String selectedExperience,
      List<String> selectedSpecialities,
      num? startPrice,
      num? endPrice,
      num? maxPrice,
      Object? error});
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res, $Val extends FilterState>
    implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? experienceList = null,
    Object? specialities = null,
    Object? selectedExperience = null,
    Object? selectedSpecialities = null,
    Object? startPrice = freezed,
    Object? endPrice = freezed,
    Object? maxPrice = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      experienceList: null == experienceList
          ? _value.experienceList
          : experienceList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      specialities: null == specialities
          ? _value.specialities
          : specialities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedExperience: null == selectedExperience
          ? _value.selectedExperience
          : selectedExperience // ignore: cast_nullable_to_non_nullable
              as String,
      selectedSpecialities: null == selectedSpecialities
          ? _value.selectedSpecialities
          : selectedSpecialities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      startPrice: freezed == startPrice
          ? _value.startPrice
          : startPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      endPrice: freezed == endPrice
          ? _value.endPrice
          : endPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilterStateCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$$_FilterStateCopyWith(
          _$_FilterState value, $Res Function(_$_FilterState) then) =
      __$$_FilterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      List<String> experienceList,
      List<String> specialities,
      String selectedExperience,
      List<String> selectedSpecialities,
      num? startPrice,
      num? endPrice,
      num? maxPrice,
      Object? error});
}

/// @nodoc
class __$$_FilterStateCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$_FilterState>
    implements _$$_FilterStateCopyWith<$Res> {
  __$$_FilterStateCopyWithImpl(
      _$_FilterState _value, $Res Function(_$_FilterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? experienceList = null,
    Object? specialities = null,
    Object? selectedExperience = null,
    Object? selectedSpecialities = null,
    Object? startPrice = freezed,
    Object? endPrice = freezed,
    Object? maxPrice = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_FilterState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      experienceList: null == experienceList
          ? _value._experienceList
          : experienceList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      specialities: null == specialities
          ? _value._specialities
          : specialities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedExperience: null == selectedExperience
          ? _value.selectedExperience
          : selectedExperience // ignore: cast_nullable_to_non_nullable
              as String,
      selectedSpecialities: null == selectedSpecialities
          ? _value._selectedSpecialities
          : selectedSpecialities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      startPrice: freezed == startPrice
          ? _value.startPrice
          : startPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      endPrice: freezed == endPrice
          ? _value.endPrice
          : endPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_FilterState implements _FilterState {
  const _$_FilterState(
      {required this.status,
      required final List<String> experienceList,
      required final List<String> specialities,
      required this.selectedExperience,
      required final List<String> selectedSpecialities,
      this.startPrice,
      this.endPrice,
      this.maxPrice,
      this.error})
      : _experienceList = experienceList,
        _specialities = specialities,
        _selectedSpecialities = selectedSpecialities;

  @override
  final BlocStatus status;
  final List<String> _experienceList;
  @override
  List<String> get experienceList {
    if (_experienceList is EqualUnmodifiableListView) return _experienceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_experienceList);
  }

  final List<String> _specialities;
  @override
  List<String> get specialities {
    if (_specialities is EqualUnmodifiableListView) return _specialities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specialities);
  }

  @override
  final String selectedExperience;
  final List<String> _selectedSpecialities;
  @override
  List<String> get selectedSpecialities {
    if (_selectedSpecialities is EqualUnmodifiableListView)
      return _selectedSpecialities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedSpecialities);
  }

  @override
  final num? startPrice;
  @override
  final num? endPrice;
  @override
  final num? maxPrice;
  @override
  final Object? error;

  @override
  String toString() {
    return 'FilterState(status: $status, experienceList: $experienceList, specialities: $specialities, selectedExperience: $selectedExperience, selectedSpecialities: $selectedSpecialities, startPrice: $startPrice, endPrice: $endPrice, maxPrice: $maxPrice, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._experienceList, _experienceList) &&
            const DeepCollectionEquality()
                .equals(other._specialities, _specialities) &&
            (identical(other.selectedExperience, selectedExperience) ||
                other.selectedExperience == selectedExperience) &&
            const DeepCollectionEquality()
                .equals(other._selectedSpecialities, _selectedSpecialities) &&
            (identical(other.startPrice, startPrice) ||
                other.startPrice == startPrice) &&
            (identical(other.endPrice, endPrice) ||
                other.endPrice == endPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_experienceList),
      const DeepCollectionEquality().hash(_specialities),
      selectedExperience,
      const DeepCollectionEquality().hash(_selectedSpecialities),
      startPrice,
      endPrice,
      maxPrice,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterStateCopyWith<_$_FilterState> get copyWith =>
      __$$_FilterStateCopyWithImpl<_$_FilterState>(this, _$identity);
}

abstract class _FilterState implements FilterState {
  const factory _FilterState(
      {required final BlocStatus status,
      required final List<String> experienceList,
      required final List<String> specialities,
      required final String selectedExperience,
      required final List<String> selectedSpecialities,
      final num? startPrice,
      final num? endPrice,
      final num? maxPrice,
      final Object? error}) = _$_FilterState;

  @override
  BlocStatus get status;
  @override
  List<String> get experienceList;
  @override
  List<String> get specialities;
  @override
  String get selectedExperience;
  @override
  List<String> get selectedSpecialities;
  @override
  num? get startPrice;
  @override
  num? get endPrice;
  @override
  num? get maxPrice;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_FilterStateCopyWith<_$_FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}
