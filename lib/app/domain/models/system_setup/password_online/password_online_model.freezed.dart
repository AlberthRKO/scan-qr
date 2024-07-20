// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_online_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasswordOnlineModel _$PasswordOnlineModelFromJson(Map<String, dynamic> json) {
  return _PasswordOnlineModel.fromJson(json);
}

/// @nodoc
mixin _$PasswordOnlineModel {
  int? get id => throw _privateConstructorUsedError;
  String? get iP => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordOnlineModelCopyWith<PasswordOnlineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordOnlineModelCopyWith<$Res> {
  factory $PasswordOnlineModelCopyWith(
          PasswordOnlineModel value, $Res Function(PasswordOnlineModel) then) =
      _$PasswordOnlineModelCopyWithImpl<$Res, PasswordOnlineModel>;
  @useResult
  $Res call({int? id, String? iP});
}

/// @nodoc
class _$PasswordOnlineModelCopyWithImpl<$Res, $Val extends PasswordOnlineModel>
    implements $PasswordOnlineModelCopyWith<$Res> {
  _$PasswordOnlineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? iP = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      iP: freezed == iP
          ? _value.iP
          : iP // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordOnlineModelImplCopyWith<$Res>
    implements $PasswordOnlineModelCopyWith<$Res> {
  factory _$$PasswordOnlineModelImplCopyWith(_$PasswordOnlineModelImpl value,
          $Res Function(_$PasswordOnlineModelImpl) then) =
      __$$PasswordOnlineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? iP});
}

/// @nodoc
class __$$PasswordOnlineModelImplCopyWithImpl<$Res>
    extends _$PasswordOnlineModelCopyWithImpl<$Res, _$PasswordOnlineModelImpl>
    implements _$$PasswordOnlineModelImplCopyWith<$Res> {
  __$$PasswordOnlineModelImplCopyWithImpl(_$PasswordOnlineModelImpl _value,
      $Res Function(_$PasswordOnlineModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? iP = freezed,
  }) {
    return _then(_$PasswordOnlineModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      iP: freezed == iP
          ? _value.iP
          : iP // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordOnlineModelImpl implements _PasswordOnlineModel {
  _$PasswordOnlineModelImpl({this.id, this.iP});

  factory _$PasswordOnlineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordOnlineModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? iP;

  @override
  String toString() {
    return 'PasswordOnlineModel(id: $id, iP: $iP)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordOnlineModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.iP, iP) || other.iP == iP));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, iP);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordOnlineModelImplCopyWith<_$PasswordOnlineModelImpl> get copyWith =>
      __$$PasswordOnlineModelImplCopyWithImpl<_$PasswordOnlineModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordOnlineModelImplToJson(
      this,
    );
  }
}

abstract class _PasswordOnlineModel implements PasswordOnlineModel {
  factory _PasswordOnlineModel({final int? id, final String? iP}) =
      _$PasswordOnlineModelImpl;

  factory _PasswordOnlineModel.fromJson(Map<String, dynamic> json) =
      _$PasswordOnlineModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get iP;
  @override
  @JsonKey(ignore: true)
  _$$PasswordOnlineModelImplCopyWith<_$PasswordOnlineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
