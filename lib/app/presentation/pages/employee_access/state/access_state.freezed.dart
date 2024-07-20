// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccessState {
  String get pin => throw _privateConstructorUsedError;
  bool get fetching => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccessStateCopyWith<AccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessStateCopyWith<$Res> {
  factory $AccessStateCopyWith(
          AccessState value, $Res Function(AccessState) then) =
      _$AccessStateCopyWithImpl<$Res, AccessState>;
  @useResult
  $Res call({String pin, bool fetching});
}

/// @nodoc
class _$AccessStateCopyWithImpl<$Res, $Val extends AccessState>
    implements $AccessStateCopyWith<$Res> {
  _$AccessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? fetching = null,
  }) {
    return _then(_value.copyWith(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      fetching: null == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccessStateImplCopyWith<$Res>
    implements $AccessStateCopyWith<$Res> {
  factory _$$AccessStateImplCopyWith(
          _$AccessStateImpl value, $Res Function(_$AccessStateImpl) then) =
      __$$AccessStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pin, bool fetching});
}

/// @nodoc
class __$$AccessStateImplCopyWithImpl<$Res>
    extends _$AccessStateCopyWithImpl<$Res, _$AccessStateImpl>
    implements _$$AccessStateImplCopyWith<$Res> {
  __$$AccessStateImplCopyWithImpl(
      _$AccessStateImpl _value, $Res Function(_$AccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? fetching = null,
  }) {
    return _then(_$AccessStateImpl(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      fetching: null == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AccessStateImpl implements _AccessState {
  const _$AccessStateImpl({this.pin = '', this.fetching = false});

  @override
  @JsonKey()
  final String pin;
  @override
  @JsonKey()
  final bool fetching;

  @override
  String toString() {
    return 'AccessState(pin: $pin, fetching: $fetching)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessStateImpl &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.fetching, fetching) ||
                other.fetching == fetching));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin, fetching);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessStateImplCopyWith<_$AccessStateImpl> get copyWith =>
      __$$AccessStateImplCopyWithImpl<_$AccessStateImpl>(this, _$identity);
}

abstract class _AccessState implements AccessState {
  const factory _AccessState({final String pin, final bool fetching}) =
      _$AccessStateImpl;

  @override
  String get pin;
  @override
  bool get fetching;
  @override
  @JsonKey(ignore: true)
  _$$AccessStateImplCopyWith<_$AccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
