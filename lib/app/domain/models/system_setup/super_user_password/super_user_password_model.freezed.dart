// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'super_user_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SuperUserPasswordModel _$SuperUserPasswordModelFromJson(
    Map<String, dynamic> json) {
  return _SuperUserPasswordModel.fromJson(json);
}

/// @nodoc
mixin _$SuperUserPasswordModel {
  int? get id => throw _privateConstructorUsedError;
  String? get p => throw _privateConstructorUsedError;
  String? get longp => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuperUserPasswordModelCopyWith<SuperUserPasswordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperUserPasswordModelCopyWith<$Res> {
  factory $SuperUserPasswordModelCopyWith(SuperUserPasswordModel value,
          $Res Function(SuperUserPasswordModel) then) =
      _$SuperUserPasswordModelCopyWithImpl<$Res, SuperUserPasswordModel>;
  @useResult
  $Res call({int? id, String? p, String? longp, int? status});
}

/// @nodoc
class _$SuperUserPasswordModelCopyWithImpl<$Res,
        $Val extends SuperUserPasswordModel>
    implements $SuperUserPasswordModelCopyWith<$Res> {
  _$SuperUserPasswordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? p = freezed,
    Object? longp = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      p: freezed == p
          ? _value.p
          : p // ignore: cast_nullable_to_non_nullable
              as String?,
      longp: freezed == longp
          ? _value.longp
          : longp // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuperUserPasswordModelImplCopyWith<$Res>
    implements $SuperUserPasswordModelCopyWith<$Res> {
  factory _$$SuperUserPasswordModelImplCopyWith(
          _$SuperUserPasswordModelImpl value,
          $Res Function(_$SuperUserPasswordModelImpl) then) =
      __$$SuperUserPasswordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? p, String? longp, int? status});
}

/// @nodoc
class __$$SuperUserPasswordModelImplCopyWithImpl<$Res>
    extends _$SuperUserPasswordModelCopyWithImpl<$Res,
        _$SuperUserPasswordModelImpl>
    implements _$$SuperUserPasswordModelImplCopyWith<$Res> {
  __$$SuperUserPasswordModelImplCopyWithImpl(
      _$SuperUserPasswordModelImpl _value,
      $Res Function(_$SuperUserPasswordModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? p = freezed,
    Object? longp = freezed,
    Object? status = freezed,
  }) {
    return _then(_$SuperUserPasswordModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      p: freezed == p
          ? _value.p
          : p // ignore: cast_nullable_to_non_nullable
              as String?,
      longp: freezed == longp
          ? _value.longp
          : longp // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuperUserPasswordModelImpl implements _SuperUserPasswordModel {
  _$SuperUserPasswordModelImpl({this.id, this.p, this.longp, this.status});

  factory _$SuperUserPasswordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuperUserPasswordModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? p;
  @override
  final String? longp;
  @override
  final int? status;

  @override
  String toString() {
    return 'SuperUserPasswordModel(id: $id, p: $p, longp: $longp, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperUserPasswordModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.p, p) || other.p == p) &&
            (identical(other.longp, longp) || other.longp == longp) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, p, longp, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperUserPasswordModelImplCopyWith<_$SuperUserPasswordModelImpl>
      get copyWith => __$$SuperUserPasswordModelImplCopyWithImpl<
          _$SuperUserPasswordModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuperUserPasswordModelImplToJson(
      this,
    );
  }
}

abstract class _SuperUserPasswordModel implements SuperUserPasswordModel {
  factory _SuperUserPasswordModel(
      {final int? id,
      final String? p,
      final String? longp,
      final int? status}) = _$SuperUserPasswordModelImpl;

  factory _SuperUserPasswordModel.fromJson(Map<String, dynamic> json) =
      _$SuperUserPasswordModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get p;
  @override
  String? get longp;
  @override
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$$SuperUserPasswordModelImplCopyWith<_$SuperUserPasswordModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
