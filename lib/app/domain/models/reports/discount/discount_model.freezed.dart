// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiscountModel _$DiscountModelFromJson(Map<String, dynamic> json) {
  return _DiscountModel.fromJson(json);
}

/// @nodoc
mixin _$DiscountModel {
  int get id => throw _privateConstructorUsedError;
  String get discountNote => throw _privateConstructorUsedError;
  String get timeString => throw _privateConstructorUsedError;
  String get shiftDateString => throw _privateConstructorUsedError;
  double get totalDiscount => throw _privateConstructorUsedError;
  String get employee => throw _privateConstructorUsedError;
  int get statusType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscountModelCopyWith<DiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountModelCopyWith<$Res> {
  factory $DiscountModelCopyWith(
          DiscountModel value, $Res Function(DiscountModel) then) =
      _$DiscountModelCopyWithImpl<$Res, DiscountModel>;
  @useResult
  $Res call(
      {int id,
      String discountNote,
      String timeString,
      String shiftDateString,
      double totalDiscount,
      String employee,
      int statusType});
}

/// @nodoc
class _$DiscountModelCopyWithImpl<$Res, $Val extends DiscountModel>
    implements $DiscountModelCopyWith<$Res> {
  _$DiscountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? discountNote = null,
    Object? timeString = null,
    Object? shiftDateString = null,
    Object? totalDiscount = null,
    Object? employee = null,
    Object? statusType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      discountNote: null == discountNote
          ? _value.discountNote
          : discountNote // ignore: cast_nullable_to_non_nullable
              as String,
      timeString: null == timeString
          ? _value.timeString
          : timeString // ignore: cast_nullable_to_non_nullable
              as String,
      shiftDateString: null == shiftDateString
          ? _value.shiftDateString
          : shiftDateString // ignore: cast_nullable_to_non_nullable
              as String,
      totalDiscount: null == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as String,
      statusType: null == statusType
          ? _value.statusType
          : statusType // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscountModelImplCopyWith<$Res>
    implements $DiscountModelCopyWith<$Res> {
  factory _$$DiscountModelImplCopyWith(
          _$DiscountModelImpl value, $Res Function(_$DiscountModelImpl) then) =
      __$$DiscountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String discountNote,
      String timeString,
      String shiftDateString,
      double totalDiscount,
      String employee,
      int statusType});
}

/// @nodoc
class __$$DiscountModelImplCopyWithImpl<$Res>
    extends _$DiscountModelCopyWithImpl<$Res, _$DiscountModelImpl>
    implements _$$DiscountModelImplCopyWith<$Res> {
  __$$DiscountModelImplCopyWithImpl(
      _$DiscountModelImpl _value, $Res Function(_$DiscountModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? discountNote = null,
    Object? timeString = null,
    Object? shiftDateString = null,
    Object? totalDiscount = null,
    Object? employee = null,
    Object? statusType = null,
  }) {
    return _then(_$DiscountModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      discountNote: null == discountNote
          ? _value.discountNote
          : discountNote // ignore: cast_nullable_to_non_nullable
              as String,
      timeString: null == timeString
          ? _value.timeString
          : timeString // ignore: cast_nullable_to_non_nullable
              as String,
      shiftDateString: null == shiftDateString
          ? _value.shiftDateString
          : shiftDateString // ignore: cast_nullable_to_non_nullable
              as String,
      totalDiscount: null == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as String,
      statusType: null == statusType
          ? _value.statusType
          : statusType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscountModelImpl implements _DiscountModel {
  _$DiscountModelImpl(
      {required this.id,
      required this.discountNote,
      required this.timeString,
      required this.shiftDateString,
      required this.totalDiscount,
      required this.employee,
      required this.statusType});

  factory _$DiscountModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountModelImplFromJson(json);

  @override
  final int id;
  @override
  final String discountNote;
  @override
  final String timeString;
  @override
  final String shiftDateString;
  @override
  final double totalDiscount;
  @override
  final String employee;
  @override
  final int statusType;

  @override
  String toString() {
    return 'DiscountModel(id: $id, discountNote: $discountNote, timeString: $timeString, shiftDateString: $shiftDateString, totalDiscount: $totalDiscount, employee: $employee, statusType: $statusType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.discountNote, discountNote) ||
                other.discountNote == discountNote) &&
            (identical(other.timeString, timeString) ||
                other.timeString == timeString) &&
            (identical(other.shiftDateString, shiftDateString) ||
                other.shiftDateString == shiftDateString) &&
            (identical(other.totalDiscount, totalDiscount) ||
                other.totalDiscount == totalDiscount) &&
            (identical(other.employee, employee) ||
                other.employee == employee) &&
            (identical(other.statusType, statusType) ||
                other.statusType == statusType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, discountNote, timeString,
      shiftDateString, totalDiscount, employee, statusType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountModelImplCopyWith<_$DiscountModelImpl> get copyWith =>
      __$$DiscountModelImplCopyWithImpl<_$DiscountModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountModelImplToJson(
      this,
    );
  }
}

abstract class _DiscountModel implements DiscountModel {
  factory _DiscountModel(
      {required final int id,
      required final String discountNote,
      required final String timeString,
      required final String shiftDateString,
      required final double totalDiscount,
      required final String employee,
      required final int statusType}) = _$DiscountModelImpl;

  factory _DiscountModel.fromJson(Map<String, dynamic> json) =
      _$DiscountModelImpl.fromJson;

  @override
  int get id;
  @override
  String get discountNote;
  @override
  String get timeString;
  @override
  String get shiftDateString;
  @override
  double get totalDiscount;
  @override
  String get employee;
  @override
  int get statusType;
  @override
  @JsonKey(ignore: true)
  _$$DiscountModelImplCopyWith<_$DiscountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
