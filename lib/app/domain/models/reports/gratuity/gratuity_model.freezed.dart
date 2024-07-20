// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gratuity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GratuityModel _$GratuityModelFromJson(Map<String, dynamic> json) {
  return _GratuityModel.fromJson(json);
}

/// @nodoc
mixin _$GratuityModel {
  int get id => throw _privateConstructorUsedError;
  String get timeString => throw _privateConstructorUsedError;
  String get shiftDateString => throw _privateConstructorUsedError;
  double get totalGratuity => throw _privateConstructorUsedError;
  String get employee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GratuityModelCopyWith<GratuityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GratuityModelCopyWith<$Res> {
  factory $GratuityModelCopyWith(
          GratuityModel value, $Res Function(GratuityModel) then) =
      _$GratuityModelCopyWithImpl<$Res, GratuityModel>;
  @useResult
  $Res call(
      {int id,
      String timeString,
      String shiftDateString,
      double totalGratuity,
      String employee});
}

/// @nodoc
class _$GratuityModelCopyWithImpl<$Res, $Val extends GratuityModel>
    implements $GratuityModelCopyWith<$Res> {
  _$GratuityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timeString = null,
    Object? shiftDateString = null,
    Object? totalGratuity = null,
    Object? employee = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timeString: null == timeString
          ? _value.timeString
          : timeString // ignore: cast_nullable_to_non_nullable
              as String,
      shiftDateString: null == shiftDateString
          ? _value.shiftDateString
          : shiftDateString // ignore: cast_nullable_to_non_nullable
              as String,
      totalGratuity: null == totalGratuity
          ? _value.totalGratuity
          : totalGratuity // ignore: cast_nullable_to_non_nullable
              as double,
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GratuityModelImplCopyWith<$Res>
    implements $GratuityModelCopyWith<$Res> {
  factory _$$GratuityModelImplCopyWith(
          _$GratuityModelImpl value, $Res Function(_$GratuityModelImpl) then) =
      __$$GratuityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String timeString,
      String shiftDateString,
      double totalGratuity,
      String employee});
}

/// @nodoc
class __$$GratuityModelImplCopyWithImpl<$Res>
    extends _$GratuityModelCopyWithImpl<$Res, _$GratuityModelImpl>
    implements _$$GratuityModelImplCopyWith<$Res> {
  __$$GratuityModelImplCopyWithImpl(
      _$GratuityModelImpl _value, $Res Function(_$GratuityModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timeString = null,
    Object? shiftDateString = null,
    Object? totalGratuity = null,
    Object? employee = null,
  }) {
    return _then(_$GratuityModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timeString: null == timeString
          ? _value.timeString
          : timeString // ignore: cast_nullable_to_non_nullable
              as String,
      shiftDateString: null == shiftDateString
          ? _value.shiftDateString
          : shiftDateString // ignore: cast_nullable_to_non_nullable
              as String,
      totalGratuity: null == totalGratuity
          ? _value.totalGratuity
          : totalGratuity // ignore: cast_nullable_to_non_nullable
              as double,
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GratuityModelImpl implements _GratuityModel {
  _$GratuityModelImpl(
      {required this.id,
      required this.timeString,
      required this.shiftDateString,
      required this.totalGratuity,
      required this.employee});

  factory _$GratuityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GratuityModelImplFromJson(json);

  @override
  final int id;
  @override
  final String timeString;
  @override
  final String shiftDateString;
  @override
  final double totalGratuity;
  @override
  final String employee;

  @override
  String toString() {
    return 'GratuityModel(id: $id, timeString: $timeString, shiftDateString: $shiftDateString, totalGratuity: $totalGratuity, employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GratuityModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timeString, timeString) ||
                other.timeString == timeString) &&
            (identical(other.shiftDateString, shiftDateString) ||
                other.shiftDateString == shiftDateString) &&
            (identical(other.totalGratuity, totalGratuity) ||
                other.totalGratuity == totalGratuity) &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, timeString, shiftDateString, totalGratuity, employee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GratuityModelImplCopyWith<_$GratuityModelImpl> get copyWith =>
      __$$GratuityModelImplCopyWithImpl<_$GratuityModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GratuityModelImplToJson(
      this,
    );
  }
}

abstract class _GratuityModel implements GratuityModel {
  factory _GratuityModel(
      {required final int id,
      required final String timeString,
      required final String shiftDateString,
      required final double totalGratuity,
      required final String employee}) = _$GratuityModelImpl;

  factory _GratuityModel.fromJson(Map<String, dynamic> json) =
      _$GratuityModelImpl.fromJson;

  @override
  int get id;
  @override
  String get timeString;
  @override
  String get shiftDateString;
  @override
  double get totalGratuity;
  @override
  String get employee;
  @override
  @JsonKey(ignore: true)
  _$$GratuityModelImplCopyWith<_$GratuityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
