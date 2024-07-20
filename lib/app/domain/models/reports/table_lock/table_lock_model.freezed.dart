// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_lock_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TableLockModel _$TableLockModelFromJson(Map<String, dynamic> json) {
  return _TableLockModel.fromJson(json);
}

/// @nodoc
mixin _$TableLockModel {
  int? get id => throw _privateConstructorUsedError;
  String? get tableName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableLockModelCopyWith<TableLockModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableLockModelCopyWith<$Res> {
  factory $TableLockModelCopyWith(
          TableLockModel value, $Res Function(TableLockModel) then) =
      _$TableLockModelCopyWithImpl<$Res, TableLockModel>;
  @useResult
  $Res call({int? id, String? tableName});
}

/// @nodoc
class _$TableLockModelCopyWithImpl<$Res, $Val extends TableLockModel>
    implements $TableLockModelCopyWith<$Res> {
  _$TableLockModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tableName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tableName: freezed == tableName
          ? _value.tableName
          : tableName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TableLockModelImplCopyWith<$Res>
    implements $TableLockModelCopyWith<$Res> {
  factory _$$TableLockModelImplCopyWith(_$TableLockModelImpl value,
          $Res Function(_$TableLockModelImpl) then) =
      __$$TableLockModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? tableName});
}

/// @nodoc
class __$$TableLockModelImplCopyWithImpl<$Res>
    extends _$TableLockModelCopyWithImpl<$Res, _$TableLockModelImpl>
    implements _$$TableLockModelImplCopyWith<$Res> {
  __$$TableLockModelImplCopyWithImpl(
      _$TableLockModelImpl _value, $Res Function(_$TableLockModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tableName = freezed,
  }) {
    return _then(_$TableLockModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tableName: freezed == tableName
          ? _value.tableName
          : tableName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TableLockModelImpl implements _TableLockModel {
  _$TableLockModelImpl({this.id, this.tableName});

  factory _$TableLockModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TableLockModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? tableName;

  @override
  String toString() {
    return 'TableLockModel(id: $id, tableName: $tableName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableLockModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tableName, tableName) ||
                other.tableName == tableName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, tableName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableLockModelImplCopyWith<_$TableLockModelImpl> get copyWith =>
      __$$TableLockModelImplCopyWithImpl<_$TableLockModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TableLockModelImplToJson(
      this,
    );
  }
}

abstract class _TableLockModel implements TableLockModel {
  factory _TableLockModel({final int? id, final String? tableName}) =
      _$TableLockModelImpl;

  factory _TableLockModel.fromJson(Map<String, dynamic> json) =
      _$TableLockModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get tableName;
  @override
  @JsonKey(ignore: true)
  _$$TableLockModelImplCopyWith<_$TableLockModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
