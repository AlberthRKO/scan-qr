// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'computer_station_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ComputerStationModel _$ComputerStationModelFromJson(Map<String, dynamic> json) {
  return _ComputerStationModel.fromJson(json);
}

/// @nodoc
mixin _$ComputerStationModel {
  int? get id => throw _privateConstructorUsedError;
  String? get ip => throw _privateConstructorUsedError;
  String? get isserver => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComputerStationModelCopyWith<ComputerStationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComputerStationModelCopyWith<$Res> {
  factory $ComputerStationModelCopyWith(ComputerStationModel value,
          $Res Function(ComputerStationModel) then) =
      _$ComputerStationModelCopyWithImpl<$Res, ComputerStationModel>;
  @useResult
  $Res call({int? id, String? ip, String? isserver, int? status});
}

/// @nodoc
class _$ComputerStationModelCopyWithImpl<$Res,
        $Val extends ComputerStationModel>
    implements $ComputerStationModelCopyWith<$Res> {
  _$ComputerStationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ip = freezed,
    Object? isserver = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      isserver: freezed == isserver
          ? _value.isserver
          : isserver // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComputerStationModelImplCopyWith<$Res>
    implements $ComputerStationModelCopyWith<$Res> {
  factory _$$ComputerStationModelImplCopyWith(_$ComputerStationModelImpl value,
          $Res Function(_$ComputerStationModelImpl) then) =
      __$$ComputerStationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? ip, String? isserver, int? status});
}

/// @nodoc
class __$$ComputerStationModelImplCopyWithImpl<$Res>
    extends _$ComputerStationModelCopyWithImpl<$Res, _$ComputerStationModelImpl>
    implements _$$ComputerStationModelImplCopyWith<$Res> {
  __$$ComputerStationModelImplCopyWithImpl(_$ComputerStationModelImpl _value,
      $Res Function(_$ComputerStationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ip = freezed,
    Object? isserver = freezed,
    Object? status = freezed,
  }) {
    return _then(_$ComputerStationModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      isserver: freezed == isserver
          ? _value.isserver
          : isserver // ignore: cast_nullable_to_non_nullable
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
class _$ComputerStationModelImpl implements _ComputerStationModel {
  _$ComputerStationModelImpl({this.id, this.ip, this.isserver, this.status});

  factory _$ComputerStationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComputerStationModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? ip;
  @override
  final String? isserver;
  @override
  final int? status;

  @override
  String toString() {
    return 'ComputerStationModel(id: $id, ip: $ip, isserver: $isserver, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComputerStationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.isserver, isserver) ||
                other.isserver == isserver) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, ip, isserver, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComputerStationModelImplCopyWith<_$ComputerStationModelImpl>
      get copyWith =>
          __$$ComputerStationModelImplCopyWithImpl<_$ComputerStationModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComputerStationModelImplToJson(
      this,
    );
  }
}

abstract class _ComputerStationModel implements ComputerStationModel {
  factory _ComputerStationModel(
      {final int? id,
      final String? ip,
      final String? isserver,
      final int? status}) = _$ComputerStationModelImpl;

  factory _ComputerStationModel.fromJson(Map<String, dynamic> json) =
      _$ComputerStationModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get ip;
  @override
  String? get isserver;
  @override
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$$ComputerStationModelImplCopyWith<_$ComputerStationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
