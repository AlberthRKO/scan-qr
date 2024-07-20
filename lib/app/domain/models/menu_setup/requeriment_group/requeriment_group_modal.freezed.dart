// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requeriment_group_modal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequerimentGroupModal _$RequerimentGroupModalFromJson(
    Map<String, dynamic> json) {
  return _RequerimentGroupModal.fromJson(json);
}

/// @nodoc
mixin _$RequerimentGroupModal {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  int? get fontsize => throw _privateConstructorUsedError;
  bool? get internet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequerimentGroupModalCopyWith<RequerimentGroupModal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequerimentGroupModalCopyWith<$Res> {
  factory $RequerimentGroupModalCopyWith(RequerimentGroupModal value,
          $Res Function(RequerimentGroupModal) then) =
      _$RequerimentGroupModalCopyWithImpl<$Res, RequerimentGroupModal>;
  @useResult
  $Res call(
      {int? id, String? name, bool? active, int? fontsize, bool? internet});
}

/// @nodoc
class _$RequerimentGroupModalCopyWithImpl<$Res,
        $Val extends RequerimentGroupModal>
    implements $RequerimentGroupModalCopyWith<$Res> {
  _$RequerimentGroupModalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? active = freezed,
    Object? fontsize = freezed,
    Object? internet = freezed,
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
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      fontsize: freezed == fontsize
          ? _value.fontsize
          : fontsize // ignore: cast_nullable_to_non_nullable
              as int?,
      internet: freezed == internet
          ? _value.internet
          : internet // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequerimentGroupModalImplCopyWith<$Res>
    implements $RequerimentGroupModalCopyWith<$Res> {
  factory _$$RequerimentGroupModalImplCopyWith(
          _$RequerimentGroupModalImpl value,
          $Res Function(_$RequerimentGroupModalImpl) then) =
      __$$RequerimentGroupModalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String? name, bool? active, int? fontsize, bool? internet});
}

/// @nodoc
class __$$RequerimentGroupModalImplCopyWithImpl<$Res>
    extends _$RequerimentGroupModalCopyWithImpl<$Res,
        _$RequerimentGroupModalImpl>
    implements _$$RequerimentGroupModalImplCopyWith<$Res> {
  __$$RequerimentGroupModalImplCopyWithImpl(_$RequerimentGroupModalImpl _value,
      $Res Function(_$RequerimentGroupModalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? active = freezed,
    Object? fontsize = freezed,
    Object? internet = freezed,
  }) {
    return _then(_$RequerimentGroupModalImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      fontsize: freezed == fontsize
          ? _value.fontsize
          : fontsize // ignore: cast_nullable_to_non_nullable
              as int?,
      internet: freezed == internet
          ? _value.internet
          : internet // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequerimentGroupModalImpl implements _RequerimentGroupModal {
  _$RequerimentGroupModalImpl(
      {this.id, this.name, this.active, this.fontsize, this.internet});

  factory _$RequerimentGroupModalImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequerimentGroupModalImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final bool? active;
  @override
  final int? fontsize;
  @override
  final bool? internet;

  @override
  String toString() {
    return 'RequerimentGroupModal(id: $id, name: $name, active: $active, fontsize: $fontsize, internet: $internet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequerimentGroupModalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.fontsize, fontsize) ||
                other.fontsize == fontsize) &&
            (identical(other.internet, internet) ||
                other.internet == internet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, active, fontsize, internet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequerimentGroupModalImplCopyWith<_$RequerimentGroupModalImpl>
      get copyWith => __$$RequerimentGroupModalImplCopyWithImpl<
          _$RequerimentGroupModalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequerimentGroupModalImplToJson(
      this,
    );
  }
}

abstract class _RequerimentGroupModal implements RequerimentGroupModal {
  factory _RequerimentGroupModal(
      {final int? id,
      final String? name,
      final bool? active,
      final int? fontsize,
      final bool? internet}) = _$RequerimentGroupModalImpl;

  factory _RequerimentGroupModal.fromJson(Map<String, dynamic> json) =
      _$RequerimentGroupModalImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  bool? get active;
  @override
  int? get fontsize;
  @override
  bool? get internet;
  @override
  @JsonKey(ignore: true)
  _$$RequerimentGroupModalImplCopyWith<_$RequerimentGroupModalImpl>
      get copyWith => throw _privateConstructorUsedError;
}
