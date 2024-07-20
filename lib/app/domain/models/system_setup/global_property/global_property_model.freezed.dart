// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_property_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GlobalPropertyModel _$GlobalPropertyModelFromJson(Map<String, dynamic> json) {
  return _GlobalPropertyModel.fromJson(json);
}

/// @nodoc
mixin _$GlobalPropertyModel {
  int? get id => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GlobalPropertyModelCopyWith<GlobalPropertyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalPropertyModelCopyWith<$Res> {
  factory $GlobalPropertyModelCopyWith(
          GlobalPropertyModel value, $Res Function(GlobalPropertyModel) then) =
      _$GlobalPropertyModelCopyWithImpl<$Res, GlobalPropertyModel>;
  @useResult
  $Res call({int? id, String? value, String? key, int? status});
}

/// @nodoc
class _$GlobalPropertyModelCopyWithImpl<$Res, $Val extends GlobalPropertyModel>
    implements $GlobalPropertyModelCopyWith<$Res> {
  _$GlobalPropertyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? key = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GlobalPropertyModelImplCopyWith<$Res>
    implements $GlobalPropertyModelCopyWith<$Res> {
  factory _$$GlobalPropertyModelImplCopyWith(_$GlobalPropertyModelImpl value,
          $Res Function(_$GlobalPropertyModelImpl) then) =
      __$$GlobalPropertyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? value, String? key, int? status});
}

/// @nodoc
class __$$GlobalPropertyModelImplCopyWithImpl<$Res>
    extends _$GlobalPropertyModelCopyWithImpl<$Res, _$GlobalPropertyModelImpl>
    implements _$$GlobalPropertyModelImplCopyWith<$Res> {
  __$$GlobalPropertyModelImplCopyWithImpl(_$GlobalPropertyModelImpl _value,
      $Res Function(_$GlobalPropertyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? key = freezed,
    Object? status = freezed,
  }) {
    return _then(_$GlobalPropertyModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
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
class _$GlobalPropertyModelImpl implements _GlobalPropertyModel {
  _$GlobalPropertyModelImpl({this.id, this.value, this.key, this.status});

  factory _$GlobalPropertyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GlobalPropertyModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? value;
  @override
  final String? key;
  @override
  final int? status;

  @override
  String toString() {
    return 'GlobalPropertyModel(id: $id, value: $value, key: $key, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlobalPropertyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value, key, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GlobalPropertyModelImplCopyWith<_$GlobalPropertyModelImpl> get copyWith =>
      __$$GlobalPropertyModelImplCopyWithImpl<_$GlobalPropertyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GlobalPropertyModelImplToJson(
      this,
    );
  }
}

abstract class _GlobalPropertyModel implements GlobalPropertyModel {
  factory _GlobalPropertyModel(
      {final int? id,
      final String? value,
      final String? key,
      final int? status}) = _$GlobalPropertyModelImpl;

  factory _GlobalPropertyModel.fromJson(Map<String, dynamic> json) =
      _$GlobalPropertyModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get value;
  @override
  String? get key;
  @override
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$$GlobalPropertyModelImplCopyWith<_$GlobalPropertyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
