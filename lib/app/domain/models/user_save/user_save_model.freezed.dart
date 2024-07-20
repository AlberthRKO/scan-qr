// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_save_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserSaveModel _$UserSaveModelFromJson(Map<String, dynamic> json) {
  return _UserSaveModel.fromJson(json);
}

/// @nodoc
mixin _$UserSaveModel {
  String? get usuario => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSaveModelCopyWith<UserSaveModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSaveModelCopyWith<$Res> {
  factory $UserSaveModelCopyWith(
          UserSaveModel value, $Res Function(UserSaveModel) then) =
      _$UserSaveModelCopyWithImpl<$Res, UserSaveModel>;
  @useResult
  $Res call({String? usuario, String? password});
}

/// @nodoc
class _$UserSaveModelCopyWithImpl<$Res, $Val extends UserSaveModel>
    implements $UserSaveModelCopyWith<$Res> {
  _$UserSaveModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usuario = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      usuario: freezed == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSaveModelImplCopyWith<$Res>
    implements $UserSaveModelCopyWith<$Res> {
  factory _$$UserSaveModelImplCopyWith(
          _$UserSaveModelImpl value, $Res Function(_$UserSaveModelImpl) then) =
      __$$UserSaveModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? usuario, String? password});
}

/// @nodoc
class __$$UserSaveModelImplCopyWithImpl<$Res>
    extends _$UserSaveModelCopyWithImpl<$Res, _$UserSaveModelImpl>
    implements _$$UserSaveModelImplCopyWith<$Res> {
  __$$UserSaveModelImplCopyWithImpl(
      _$UserSaveModelImpl _value, $Res Function(_$UserSaveModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usuario = freezed,
    Object? password = freezed,
  }) {
    return _then(_$UserSaveModelImpl(
      usuario: freezed == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSaveModelImpl implements _UserSaveModel {
  _$UserSaveModelImpl({this.usuario, this.password});

  factory _$UserSaveModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSaveModelImplFromJson(json);

  @override
  final String? usuario;
  @override
  final String? password;

  @override
  String toString() {
    return 'UserSaveModel(usuario: $usuario, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSaveModelImpl &&
            (identical(other.usuario, usuario) || other.usuario == usuario) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, usuario, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSaveModelImplCopyWith<_$UserSaveModelImpl> get copyWith =>
      __$$UserSaveModelImplCopyWithImpl<_$UserSaveModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSaveModelImplToJson(
      this,
    );
  }
}

abstract class _UserSaveModel implements UserSaveModel {
  factory _UserSaveModel({final String? usuario, final String? password}) =
      _$UserSaveModelImpl;

  factory _UserSaveModel.fromJson(Map<String, dynamic> json) =
      _$UserSaveModelImpl.fromJson;

  @override
  String? get usuario;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$UserSaveModelImplCopyWith<_$UserSaveModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
