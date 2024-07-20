// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_track_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteTrackModel _$DeleteTrackModelFromJson(Map<String, dynamic> json) {
  return _DeleteTrackModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteTrackModel {
  int get id => throw _privateConstructorUsedError;
  String get dateString => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get employee => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  int get statusType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteTrackModelCopyWith<DeleteTrackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteTrackModelCopyWith<$Res> {
  factory $DeleteTrackModelCopyWith(
          DeleteTrackModel value, $Res Function(DeleteTrackModel) then) =
      _$DeleteTrackModelCopyWithImpl<$Res, DeleteTrackModel>;
  @useResult
  $Res call(
      {int id,
      String dateString,
      String content,
      String? note,
      double amount,
      String employee,
      int status,
      int statusType});
}

/// @nodoc
class _$DeleteTrackModelCopyWithImpl<$Res, $Val extends DeleteTrackModel>
    implements $DeleteTrackModelCopyWith<$Res> {
  _$DeleteTrackModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateString = null,
    Object? content = null,
    Object? note = freezed,
    Object? amount = null,
    Object? employee = null,
    Object? status = null,
    Object? statusType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dateString: null == dateString
          ? _value.dateString
          : dateString // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      statusType: null == statusType
          ? _value.statusType
          : statusType // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteTrackModelImplCopyWith<$Res>
    implements $DeleteTrackModelCopyWith<$Res> {
  factory _$$DeleteTrackModelImplCopyWith(_$DeleteTrackModelImpl value,
          $Res Function(_$DeleteTrackModelImpl) then) =
      __$$DeleteTrackModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String dateString,
      String content,
      String? note,
      double amount,
      String employee,
      int status,
      int statusType});
}

/// @nodoc
class __$$DeleteTrackModelImplCopyWithImpl<$Res>
    extends _$DeleteTrackModelCopyWithImpl<$Res, _$DeleteTrackModelImpl>
    implements _$$DeleteTrackModelImplCopyWith<$Res> {
  __$$DeleteTrackModelImplCopyWithImpl(_$DeleteTrackModelImpl _value,
      $Res Function(_$DeleteTrackModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateString = null,
    Object? content = null,
    Object? note = freezed,
    Object? amount = null,
    Object? employee = null,
    Object? status = null,
    Object? statusType = null,
  }) {
    return _then(_$DeleteTrackModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dateString: null == dateString
          ? _value.dateString
          : dateString // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      statusType: null == statusType
          ? _value.statusType
          : statusType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteTrackModelImpl implements _DeleteTrackModel {
  _$DeleteTrackModelImpl(
      {required this.id,
      required this.dateString,
      required this.content,
      this.note,
      required this.amount,
      required this.employee,
      required this.status,
      required this.statusType});

  factory _$DeleteTrackModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteTrackModelImplFromJson(json);

  @override
  final int id;
  @override
  final String dateString;
  @override
  final String content;
  @override
  final String? note;
  @override
  final double amount;
  @override
  final String employee;
  @override
  final int status;
  @override
  final int statusType;

  @override
  String toString() {
    return 'DeleteTrackModel(id: $id, dateString: $dateString, content: $content, note: $note, amount: $amount, employee: $employee, status: $status, statusType: $statusType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTrackModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateString, dateString) ||
                other.dateString == dateString) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.employee, employee) ||
                other.employee == employee) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusType, statusType) ||
                other.statusType == statusType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, dateString, content, note,
      amount, employee, status, statusType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTrackModelImplCopyWith<_$DeleteTrackModelImpl> get copyWith =>
      __$$DeleteTrackModelImplCopyWithImpl<_$DeleteTrackModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteTrackModelImplToJson(
      this,
    );
  }
}

abstract class _DeleteTrackModel implements DeleteTrackModel {
  factory _DeleteTrackModel(
      {required final int id,
      required final String dateString,
      required final String content,
      final String? note,
      required final double amount,
      required final String employee,
      required final int status,
      required final int statusType}) = _$DeleteTrackModelImpl;

  factory _DeleteTrackModel.fromJson(Map<String, dynamic> json) =
      _$DeleteTrackModelImpl.fromJson;

  @override
  int get id;
  @override
  String get dateString;
  @override
  String get content;
  @override
  String? get note;
  @override
  double get amount;
  @override
  String get employee;
  @override
  int get status;
  @override
  int get statusType;
  @override
  @JsonKey(ignore: true)
  _$$DeleteTrackModelImplCopyWith<_$DeleteTrackModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
