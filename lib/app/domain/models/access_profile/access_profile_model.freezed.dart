// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccessProfileModel _$AccessProfileModelFromJson(Map<String, dynamic> json) {
  return _AccessProfileModel.fromJson(json);
}

/// @nodoc
mixin _$AccessProfileModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get nameRelation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessProfileModelCopyWith<AccessProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessProfileModelCopyWith<$Res> {
  factory $AccessProfileModelCopyWith(
          AccessProfileModel value, $Res Function(AccessProfileModel) then) =
      _$AccessProfileModelCopyWithImpl<$Res, AccessProfileModel>;
  @useResult
  $Res call({int? id, String? name, String? nameRelation});
}

/// @nodoc
class _$AccessProfileModelCopyWithImpl<$Res, $Val extends AccessProfileModel>
    implements $AccessProfileModelCopyWith<$Res> {
  _$AccessProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nameRelation = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameRelation: freezed == nameRelation
          ? _value.nameRelation
          : nameRelation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccessProfileModelImplCopyWith<$Res>
    implements $AccessProfileModelCopyWith<$Res> {
  factory _$$AccessProfileModelImplCopyWith(_$AccessProfileModelImpl value,
          $Res Function(_$AccessProfileModelImpl) then) =
      __$$AccessProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? nameRelation});
}

/// @nodoc
class __$$AccessProfileModelImplCopyWithImpl<$Res>
    extends _$AccessProfileModelCopyWithImpl<$Res, _$AccessProfileModelImpl>
    implements _$$AccessProfileModelImplCopyWith<$Res> {
  __$$AccessProfileModelImplCopyWithImpl(_$AccessProfileModelImpl _value,
      $Res Function(_$AccessProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nameRelation = freezed,
  }) {
    return _then(_$AccessProfileModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameRelation: freezed == nameRelation
          ? _value.nameRelation
          : nameRelation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccessProfileModelImpl implements _AccessProfileModel {
  _$AccessProfileModelImpl({this.id, this.name, this.nameRelation});

  factory _$AccessProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessProfileModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? nameRelation;

  @override
  String toString() {
    return 'AccessProfileModel(id: $id, name: $name, nameRelation: $nameRelation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameRelation, nameRelation) ||
                other.nameRelation == nameRelation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, nameRelation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessProfileModelImplCopyWith<_$AccessProfileModelImpl> get copyWith =>
      __$$AccessProfileModelImplCopyWithImpl<_$AccessProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccessProfileModelImplToJson(
      this,
    );
  }
}

abstract class _AccessProfileModel implements AccessProfileModel {
  factory _AccessProfileModel(
      {final int? id,
      final String? name,
      final String? nameRelation}) = _$AccessProfileModelImpl;

  factory _AccessProfileModel.fromJson(Map<String, dynamic> json) =
      _$AccessProfileModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get nameRelation;
  @override
  @JsonKey(ignore: true)
  _$$AccessProfileModelImplCopyWith<_$AccessProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
