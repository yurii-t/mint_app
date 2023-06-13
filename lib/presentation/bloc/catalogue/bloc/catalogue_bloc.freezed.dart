// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalogue_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CatalogueEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCatalogueDoctors,
    required TResult Function(num startPrice, num endPrice, String experience,
            List<String> selectedSecialities)
        applyFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCatalogueDoctors,
    TResult? Function(num startPrice, num endPrice, String experience,
            List<String> selectedSecialities)?
        applyFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCatalogueDoctors,
    TResult Function(num startPrice, num endPrice, String experience,
            List<String> selectedSecialities)?
        applyFilters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCatalogueDoctors value) getCatalogueDoctors,
    required TResult Function(_ApplyFilters value) applyFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCatalogueDoctors value)? getCatalogueDoctors,
    TResult? Function(_ApplyFilters value)? applyFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCatalogueDoctors value)? getCatalogueDoctors,
    TResult Function(_ApplyFilters value)? applyFilters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogueEventCopyWith<$Res> {
  factory $CatalogueEventCopyWith(
          CatalogueEvent value, $Res Function(CatalogueEvent) then) =
      _$CatalogueEventCopyWithImpl<$Res, CatalogueEvent>;
}

/// @nodoc
class _$CatalogueEventCopyWithImpl<$Res, $Val extends CatalogueEvent>
    implements $CatalogueEventCopyWith<$Res> {
  _$CatalogueEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetCatalogueDoctorsCopyWith<$Res> {
  factory _$$_GetCatalogueDoctorsCopyWith(_$_GetCatalogueDoctors value,
          $Res Function(_$_GetCatalogueDoctors) then) =
      __$$_GetCatalogueDoctorsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCatalogueDoctorsCopyWithImpl<$Res>
    extends _$CatalogueEventCopyWithImpl<$Res, _$_GetCatalogueDoctors>
    implements _$$_GetCatalogueDoctorsCopyWith<$Res> {
  __$$_GetCatalogueDoctorsCopyWithImpl(_$_GetCatalogueDoctors _value,
      $Res Function(_$_GetCatalogueDoctors) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetCatalogueDoctors implements _GetCatalogueDoctors {
  const _$_GetCatalogueDoctors();

  @override
  String toString() {
    return 'CatalogueEvent.getCatalogueDoctors()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCatalogueDoctors);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCatalogueDoctors,
    required TResult Function(num startPrice, num endPrice, String experience,
            List<String> selectedSecialities)
        applyFilters,
  }) {
    return getCatalogueDoctors();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCatalogueDoctors,
    TResult? Function(num startPrice, num endPrice, String experience,
            List<String> selectedSecialities)?
        applyFilters,
  }) {
    return getCatalogueDoctors?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCatalogueDoctors,
    TResult Function(num startPrice, num endPrice, String experience,
            List<String> selectedSecialities)?
        applyFilters,
    required TResult orElse(),
  }) {
    if (getCatalogueDoctors != null) {
      return getCatalogueDoctors();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCatalogueDoctors value) getCatalogueDoctors,
    required TResult Function(_ApplyFilters value) applyFilters,
  }) {
    return getCatalogueDoctors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCatalogueDoctors value)? getCatalogueDoctors,
    TResult? Function(_ApplyFilters value)? applyFilters,
  }) {
    return getCatalogueDoctors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCatalogueDoctors value)? getCatalogueDoctors,
    TResult Function(_ApplyFilters value)? applyFilters,
    required TResult orElse(),
  }) {
    if (getCatalogueDoctors != null) {
      return getCatalogueDoctors(this);
    }
    return orElse();
  }
}

abstract class _GetCatalogueDoctors implements CatalogueEvent {
  const factory _GetCatalogueDoctors() = _$_GetCatalogueDoctors;
}

/// @nodoc
abstract class _$$_ApplyFiltersCopyWith<$Res> {
  factory _$$_ApplyFiltersCopyWith(
          _$_ApplyFilters value, $Res Function(_$_ApplyFilters) then) =
      __$$_ApplyFiltersCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {num startPrice,
      num endPrice,
      String experience,
      List<String> selectedSecialities});
}

/// @nodoc
class __$$_ApplyFiltersCopyWithImpl<$Res>
    extends _$CatalogueEventCopyWithImpl<$Res, _$_ApplyFilters>
    implements _$$_ApplyFiltersCopyWith<$Res> {
  __$$_ApplyFiltersCopyWithImpl(
      _$_ApplyFilters _value, $Res Function(_$_ApplyFilters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startPrice = null,
    Object? endPrice = null,
    Object? experience = null,
    Object? selectedSecialities = null,
  }) {
    return _then(_$_ApplyFilters(
      startPrice: null == startPrice
          ? _value.startPrice
          : startPrice // ignore: cast_nullable_to_non_nullable
              as num,
      endPrice: null == endPrice
          ? _value.endPrice
          : endPrice // ignore: cast_nullable_to_non_nullable
              as num,
      experience: null == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String,
      selectedSecialities: null == selectedSecialities
          ? _value._selectedSecialities
          : selectedSecialities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ApplyFilters implements _ApplyFilters {
  const _$_ApplyFilters(
      {required this.startPrice,
      required this.endPrice,
      required this.experience,
      required final List<String> selectedSecialities})
      : _selectedSecialities = selectedSecialities;

  @override
  final num startPrice;
  @override
  final num endPrice;
  @override
  final String experience;
  final List<String> _selectedSecialities;
  @override
  List<String> get selectedSecialities {
    if (_selectedSecialities is EqualUnmodifiableListView)
      return _selectedSecialities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedSecialities);
  }

  @override
  String toString() {
    return 'CatalogueEvent.applyFilters(startPrice: $startPrice, endPrice: $endPrice, experience: $experience, selectedSecialities: $selectedSecialities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplyFilters &&
            (identical(other.startPrice, startPrice) ||
                other.startPrice == startPrice) &&
            (identical(other.endPrice, endPrice) ||
                other.endPrice == endPrice) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            const DeepCollectionEquality()
                .equals(other._selectedSecialities, _selectedSecialities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startPrice, endPrice, experience,
      const DeepCollectionEquality().hash(_selectedSecialities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplyFiltersCopyWith<_$_ApplyFilters> get copyWith =>
      __$$_ApplyFiltersCopyWithImpl<_$_ApplyFilters>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCatalogueDoctors,
    required TResult Function(num startPrice, num endPrice, String experience,
            List<String> selectedSecialities)
        applyFilters,
  }) {
    return applyFilters(startPrice, endPrice, experience, selectedSecialities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCatalogueDoctors,
    TResult? Function(num startPrice, num endPrice, String experience,
            List<String> selectedSecialities)?
        applyFilters,
  }) {
    return applyFilters?.call(
        startPrice, endPrice, experience, selectedSecialities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCatalogueDoctors,
    TResult Function(num startPrice, num endPrice, String experience,
            List<String> selectedSecialities)?
        applyFilters,
    required TResult orElse(),
  }) {
    if (applyFilters != null) {
      return applyFilters(
          startPrice, endPrice, experience, selectedSecialities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCatalogueDoctors value) getCatalogueDoctors,
    required TResult Function(_ApplyFilters value) applyFilters,
  }) {
    return applyFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCatalogueDoctors value)? getCatalogueDoctors,
    TResult? Function(_ApplyFilters value)? applyFilters,
  }) {
    return applyFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCatalogueDoctors value)? getCatalogueDoctors,
    TResult Function(_ApplyFilters value)? applyFilters,
    required TResult orElse(),
  }) {
    if (applyFilters != null) {
      return applyFilters(this);
    }
    return orElse();
  }
}

abstract class _ApplyFilters implements CatalogueEvent {
  const factory _ApplyFilters(
      {required final num startPrice,
      required final num endPrice,
      required final String experience,
      required final List<String> selectedSecialities}) = _$_ApplyFilters;

  num get startPrice;
  num get endPrice;
  String get experience;
  List<String> get selectedSecialities;
  @JsonKey(ignore: true)
  _$$_ApplyFiltersCopyWith<_$_ApplyFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CatalogueState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<Doctor>? get doctors => throw _privateConstructorUsedError;
  List<Doctor>? get allDoctors => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogueStateCopyWith<CatalogueState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogueStateCopyWith<$Res> {
  factory $CatalogueStateCopyWith(
          CatalogueState value, $Res Function(CatalogueState) then) =
      _$CatalogueStateCopyWithImpl<$Res, CatalogueState>;
  @useResult
  $Res call(
      {BlocStatus status,
      List<Doctor>? doctors,
      List<Doctor>? allDoctors,
      Object? error});
}

/// @nodoc
class _$CatalogueStateCopyWithImpl<$Res, $Val extends CatalogueState>
    implements $CatalogueStateCopyWith<$Res> {
  _$CatalogueStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? doctors = freezed,
    Object? allDoctors = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      doctors: freezed == doctors
          ? _value.doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<Doctor>?,
      allDoctors: freezed == allDoctors
          ? _value.allDoctors
          : allDoctors // ignore: cast_nullable_to_non_nullable
              as List<Doctor>?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CatalogueStateCopyWith<$Res>
    implements $CatalogueStateCopyWith<$Res> {
  factory _$$_CatalogueStateCopyWith(
          _$_CatalogueState value, $Res Function(_$_CatalogueState) then) =
      __$$_CatalogueStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      List<Doctor>? doctors,
      List<Doctor>? allDoctors,
      Object? error});
}

/// @nodoc
class __$$_CatalogueStateCopyWithImpl<$Res>
    extends _$CatalogueStateCopyWithImpl<$Res, _$_CatalogueState>
    implements _$$_CatalogueStateCopyWith<$Res> {
  __$$_CatalogueStateCopyWithImpl(
      _$_CatalogueState _value, $Res Function(_$_CatalogueState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? doctors = freezed,
    Object? allDoctors = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_CatalogueState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      doctors: freezed == doctors
          ? _value._doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<Doctor>?,
      allDoctors: freezed == allDoctors
          ? _value._allDoctors
          : allDoctors // ignore: cast_nullable_to_non_nullable
              as List<Doctor>?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_CatalogueState implements _CatalogueState {
  const _$_CatalogueState(
      {required this.status,
      final List<Doctor>? doctors,
      final List<Doctor>? allDoctors,
      this.error})
      : _doctors = doctors,
        _allDoctors = allDoctors;

  @override
  final BlocStatus status;
  final List<Doctor>? _doctors;
  @override
  List<Doctor>? get doctors {
    final value = _doctors;
    if (value == null) return null;
    if (_doctors is EqualUnmodifiableListView) return _doctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Doctor>? _allDoctors;
  @override
  List<Doctor>? get allDoctors {
    final value = _allDoctors;
    if (value == null) return null;
    if (_allDoctors is EqualUnmodifiableListView) return _allDoctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Object? error;

  @override
  String toString() {
    return 'CatalogueState(status: $status, doctors: $doctors, allDoctors: $allDoctors, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogueState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._doctors, _doctors) &&
            const DeepCollectionEquality()
                .equals(other._allDoctors, _allDoctors) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_doctors),
      const DeepCollectionEquality().hash(_allDoctors),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatalogueStateCopyWith<_$_CatalogueState> get copyWith =>
      __$$_CatalogueStateCopyWithImpl<_$_CatalogueState>(this, _$identity);
}

abstract class _CatalogueState implements CatalogueState {
  const factory _CatalogueState(
      {required final BlocStatus status,
      final List<Doctor>? doctors,
      final List<Doctor>? allDoctors,
      final Object? error}) = _$_CatalogueState;

  @override
  BlocStatus get status;
  @override
  List<Doctor>? get doctors;
  @override
  List<Doctor>? get allDoctors;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogueStateCopyWith<_$_CatalogueState> get copyWith =>
      throw _privateConstructorUsedError;
}
