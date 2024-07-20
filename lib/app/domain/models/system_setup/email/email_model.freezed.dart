// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmailModel _$EmailModelFromJson(Map<String, dynamic> json) {
  return _EmailModel.fromJson(json);
}

/// @nodoc
mixin _$EmailModel {
  int? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get clave => throw _privateConstructorUsedError;
  String? get smtpHost => throw _privateConstructorUsedError;
  int? get smtpPort => throw _privateConstructorUsedError;
  bool? get smtpEncryption => throw _privateConstructorUsedError;
  int? get idSistema => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailModelCopyWith<EmailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailModelCopyWith<$Res> {
  factory $EmailModelCopyWith(
          EmailModel value, $Res Function(EmailModel) then) =
      _$EmailModelCopyWithImpl<$Res, EmailModel>;
  @useResult
  $Res call(
      {int? id,
      String? email,
      String? clave,
      String? smtpHost,
      int? smtpPort,
      bool? smtpEncryption,
      int? idSistema});
}

/// @nodoc
class _$EmailModelCopyWithImpl<$Res, $Val extends EmailModel>
    implements $EmailModelCopyWith<$Res> {
  _$EmailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? clave = freezed,
    Object? smtpHost = freezed,
    Object? smtpPort = freezed,
    Object? smtpEncryption = freezed,
    Object? idSistema = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      clave: freezed == clave
          ? _value.clave
          : clave // ignore: cast_nullable_to_non_nullable
              as String?,
      smtpHost: freezed == smtpHost
          ? _value.smtpHost
          : smtpHost // ignore: cast_nullable_to_non_nullable
              as String?,
      smtpPort: freezed == smtpPort
          ? _value.smtpPort
          : smtpPort // ignore: cast_nullable_to_non_nullable
              as int?,
      smtpEncryption: freezed == smtpEncryption
          ? _value.smtpEncryption
          : smtpEncryption // ignore: cast_nullable_to_non_nullable
              as bool?,
      idSistema: freezed == idSistema
          ? _value.idSistema
          : idSistema // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailModelImplCopyWith<$Res>
    implements $EmailModelCopyWith<$Res> {
  factory _$$EmailModelImplCopyWith(
          _$EmailModelImpl value, $Res Function(_$EmailModelImpl) then) =
      __$$EmailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? email,
      String? clave,
      String? smtpHost,
      int? smtpPort,
      bool? smtpEncryption,
      int? idSistema});
}

/// @nodoc
class __$$EmailModelImplCopyWithImpl<$Res>
    extends _$EmailModelCopyWithImpl<$Res, _$EmailModelImpl>
    implements _$$EmailModelImplCopyWith<$Res> {
  __$$EmailModelImplCopyWithImpl(
      _$EmailModelImpl _value, $Res Function(_$EmailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? clave = freezed,
    Object? smtpHost = freezed,
    Object? smtpPort = freezed,
    Object? smtpEncryption = freezed,
    Object? idSistema = freezed,
  }) {
    return _then(_$EmailModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      clave: freezed == clave
          ? _value.clave
          : clave // ignore: cast_nullable_to_non_nullable
              as String?,
      smtpHost: freezed == smtpHost
          ? _value.smtpHost
          : smtpHost // ignore: cast_nullable_to_non_nullable
              as String?,
      smtpPort: freezed == smtpPort
          ? _value.smtpPort
          : smtpPort // ignore: cast_nullable_to_non_nullable
              as int?,
      smtpEncryption: freezed == smtpEncryption
          ? _value.smtpEncryption
          : smtpEncryption // ignore: cast_nullable_to_non_nullable
              as bool?,
      idSistema: freezed == idSistema
          ? _value.idSistema
          : idSistema // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmailModelImpl implements _EmailModel {
  _$EmailModelImpl(
      {this.id,
      this.email,
      this.clave,
      this.smtpHost,
      this.smtpPort,
      this.smtpEncryption,
      this.idSistema});

  factory _$EmailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmailModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? email;
  @override
  final String? clave;
  @override
  final String? smtpHost;
  @override
  final int? smtpPort;
  @override
  final bool? smtpEncryption;
  @override
  final int? idSistema;

  @override
  String toString() {
    return 'EmailModel(id: $id, email: $email, clave: $clave, smtpHost: $smtpHost, smtpPort: $smtpPort, smtpEncryption: $smtpEncryption, idSistema: $idSistema)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.clave, clave) || other.clave == clave) &&
            (identical(other.smtpHost, smtpHost) ||
                other.smtpHost == smtpHost) &&
            (identical(other.smtpPort, smtpPort) ||
                other.smtpPort == smtpPort) &&
            (identical(other.smtpEncryption, smtpEncryption) ||
                other.smtpEncryption == smtpEncryption) &&
            (identical(other.idSistema, idSistema) ||
                other.idSistema == idSistema));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, clave, smtpHost,
      smtpPort, smtpEncryption, idSistema);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailModelImplCopyWith<_$EmailModelImpl> get copyWith =>
      __$$EmailModelImplCopyWithImpl<_$EmailModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailModelImplToJson(
      this,
    );
  }
}

abstract class _EmailModel implements EmailModel {
  factory _EmailModel(
      {final int? id,
      final String? email,
      final String? clave,
      final String? smtpHost,
      final int? smtpPort,
      final bool? smtpEncryption,
      final int? idSistema}) = _$EmailModelImpl;

  factory _EmailModel.fromJson(Map<String, dynamic> json) =
      _$EmailModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get email;
  @override
  String? get clave;
  @override
  String? get smtpHost;
  @override
  int? get smtpPort;
  @override
  bool? get smtpEncryption;
  @override
  int? get idSistema;
  @override
  @JsonKey(ignore: true)
  _$$EmailModelImplCopyWith<_$EmailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
