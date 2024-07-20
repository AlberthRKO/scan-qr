// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'printer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrinterModel _$PrinterModelFromJson(Map<String, dynamic> json) {
  return _PrinterModel.fromJson(json);
}

/// @nodoc
mixin _$PrinterModel {
  String? get port => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get ip => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrinterModelCopyWith<PrinterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrinterModelCopyWith<$Res> {
  factory $PrinterModelCopyWith(
          PrinterModel value, $Res Function(PrinterModel) then) =
      _$PrinterModelCopyWithImpl<$Res, PrinterModel>;
  @useResult
  $Res call(
      {String? port,
      int? id,
      String? name,
      String? type,
      String? ip,
      int? status});
}

/// @nodoc
class _$PrinterModelCopyWithImpl<$Res, $Val extends PrinterModel>
    implements $PrinterModelCopyWith<$Res> {
  _$PrinterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? port = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? ip = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      port: freezed == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrinterModelImplCopyWith<$Res>
    implements $PrinterModelCopyWith<$Res> {
  factory _$$PrinterModelImplCopyWith(
          _$PrinterModelImpl value, $Res Function(_$PrinterModelImpl) then) =
      __$$PrinterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? port,
      int? id,
      String? name,
      String? type,
      String? ip,
      int? status});
}

/// @nodoc
class __$$PrinterModelImplCopyWithImpl<$Res>
    extends _$PrinterModelCopyWithImpl<$Res, _$PrinterModelImpl>
    implements _$$PrinterModelImplCopyWith<$Res> {
  __$$PrinterModelImplCopyWithImpl(
      _$PrinterModelImpl _value, $Res Function(_$PrinterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? port = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? ip = freezed,
    Object? status = freezed,
  }) {
    return _then(_$PrinterModelImpl(
      port: freezed == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
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
class _$PrinterModelImpl implements _PrinterModel {
  _$PrinterModelImpl(
      {this.port, this.id, this.name, this.type, this.ip, this.status});

  factory _$PrinterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrinterModelImplFromJson(json);

  @override
  final String? port;
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? ip;
  @override
  final int? status;

  @override
  String toString() {
    return 'PrinterModel(port: $port, id: $id, name: $name, type: $type, ip: $ip, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrinterModelImpl &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, port, id, name, type, ip, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrinterModelImplCopyWith<_$PrinterModelImpl> get copyWith =>
      __$$PrinterModelImplCopyWithImpl<_$PrinterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrinterModelImplToJson(
      this,
    );
  }
}

abstract class _PrinterModel implements PrinterModel {
  factory _PrinterModel(
      {final String? port,
      final int? id,
      final String? name,
      final String? type,
      final String? ip,
      final int? status}) = _$PrinterModelImpl;

  factory _PrinterModel.fromJson(Map<String, dynamic> json) =
      _$PrinterModelImpl.fromJson;

  @override
  String? get port;
  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get ip;
  @override
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$$PrinterModelImplCopyWith<_$PrinterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
