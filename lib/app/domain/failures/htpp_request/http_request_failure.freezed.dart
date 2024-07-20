// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_request_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HttpRequestFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() network,
    required TResult Function() unauthorized,
    required TResult Function() unknow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? network,
    TResult? Function()? unauthorized,
    TResult? Function()? unknow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? network,
    TResult Function()? unauthorized,
    TResult Function()? unknow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpRequestFailureNotFound value) notFound,
    required TResult Function(HttpRequestFailureNetwork value) network,
    required TResult Function(HttpRequestFailureUnauthorized value)
        unauthorized,
    required TResult Function(HttpRequestFailureUnknow value) unknow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpRequestFailureNotFound value)? notFound,
    TResult? Function(HttpRequestFailureNetwork value)? network,
    TResult? Function(HttpRequestFailureUnauthorized value)? unauthorized,
    TResult? Function(HttpRequestFailureUnknow value)? unknow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpRequestFailureNotFound value)? notFound,
    TResult Function(HttpRequestFailureNetwork value)? network,
    TResult Function(HttpRequestFailureUnauthorized value)? unauthorized,
    TResult Function(HttpRequestFailureUnknow value)? unknow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpRequestFailureCopyWith<$Res> {
  factory $HttpRequestFailureCopyWith(
          HttpRequestFailure value, $Res Function(HttpRequestFailure) then) =
      _$HttpRequestFailureCopyWithImpl<$Res, HttpRequestFailure>;
}

/// @nodoc
class _$HttpRequestFailureCopyWithImpl<$Res, $Val extends HttpRequestFailure>
    implements $HttpRequestFailureCopyWith<$Res> {
  _$HttpRequestFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HttpRequestFailureNotFoundImplCopyWith<$Res> {
  factory _$$HttpRequestFailureNotFoundImplCopyWith(
          _$HttpRequestFailureNotFoundImpl value,
          $Res Function(_$HttpRequestFailureNotFoundImpl) then) =
      __$$HttpRequestFailureNotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HttpRequestFailureNotFoundImplCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res,
        _$HttpRequestFailureNotFoundImpl>
    implements _$$HttpRequestFailureNotFoundImplCopyWith<$Res> {
  __$$HttpRequestFailureNotFoundImplCopyWithImpl(
      _$HttpRequestFailureNotFoundImpl _value,
      $Res Function(_$HttpRequestFailureNotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HttpRequestFailureNotFoundImpl implements HttpRequestFailureNotFound {
  _$HttpRequestFailureNotFoundImpl();

  @override
  String toString() {
    return 'HttpRequestFailure.notFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpRequestFailureNotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() network,
    required TResult Function() unauthorized,
    required TResult Function() unknow,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? network,
    TResult? Function()? unauthorized,
    TResult? Function()? unknow,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? network,
    TResult Function()? unauthorized,
    TResult Function()? unknow,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpRequestFailureNotFound value) notFound,
    required TResult Function(HttpRequestFailureNetwork value) network,
    required TResult Function(HttpRequestFailureUnauthorized value)
        unauthorized,
    required TResult Function(HttpRequestFailureUnknow value) unknow,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpRequestFailureNotFound value)? notFound,
    TResult? Function(HttpRequestFailureNetwork value)? network,
    TResult? Function(HttpRequestFailureUnauthorized value)? unauthorized,
    TResult? Function(HttpRequestFailureUnknow value)? unknow,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpRequestFailureNotFound value)? notFound,
    TResult Function(HttpRequestFailureNetwork value)? network,
    TResult Function(HttpRequestFailureUnauthorized value)? unauthorized,
    TResult Function(HttpRequestFailureUnknow value)? unknow,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class HttpRequestFailureNotFound implements HttpRequestFailure {
  factory HttpRequestFailureNotFound() = _$HttpRequestFailureNotFoundImpl;
}

/// @nodoc
abstract class _$$HttpRequestFailureNetworkImplCopyWith<$Res> {
  factory _$$HttpRequestFailureNetworkImplCopyWith(
          _$HttpRequestFailureNetworkImpl value,
          $Res Function(_$HttpRequestFailureNetworkImpl) then) =
      __$$HttpRequestFailureNetworkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HttpRequestFailureNetworkImplCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res,
        _$HttpRequestFailureNetworkImpl>
    implements _$$HttpRequestFailureNetworkImplCopyWith<$Res> {
  __$$HttpRequestFailureNetworkImplCopyWithImpl(
      _$HttpRequestFailureNetworkImpl _value,
      $Res Function(_$HttpRequestFailureNetworkImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HttpRequestFailureNetworkImpl implements HttpRequestFailureNetwork {
  _$HttpRequestFailureNetworkImpl();

  @override
  String toString() {
    return 'HttpRequestFailure.network()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpRequestFailureNetworkImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() network,
    required TResult Function() unauthorized,
    required TResult Function() unknow,
  }) {
    return network();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? network,
    TResult? Function()? unauthorized,
    TResult? Function()? unknow,
  }) {
    return network?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? network,
    TResult Function()? unauthorized,
    TResult Function()? unknow,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpRequestFailureNotFound value) notFound,
    required TResult Function(HttpRequestFailureNetwork value) network,
    required TResult Function(HttpRequestFailureUnauthorized value)
        unauthorized,
    required TResult Function(HttpRequestFailureUnknow value) unknow,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpRequestFailureNotFound value)? notFound,
    TResult? Function(HttpRequestFailureNetwork value)? network,
    TResult? Function(HttpRequestFailureUnauthorized value)? unauthorized,
    TResult? Function(HttpRequestFailureUnknow value)? unknow,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpRequestFailureNotFound value)? notFound,
    TResult Function(HttpRequestFailureNetwork value)? network,
    TResult Function(HttpRequestFailureUnauthorized value)? unauthorized,
    TResult Function(HttpRequestFailureUnknow value)? unknow,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class HttpRequestFailureNetwork implements HttpRequestFailure {
  factory HttpRequestFailureNetwork() = _$HttpRequestFailureNetworkImpl;
}

/// @nodoc
abstract class _$$HttpRequestFailureUnauthorizedImplCopyWith<$Res> {
  factory _$$HttpRequestFailureUnauthorizedImplCopyWith(
          _$HttpRequestFailureUnauthorizedImpl value,
          $Res Function(_$HttpRequestFailureUnauthorizedImpl) then) =
      __$$HttpRequestFailureUnauthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HttpRequestFailureUnauthorizedImplCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res,
        _$HttpRequestFailureUnauthorizedImpl>
    implements _$$HttpRequestFailureUnauthorizedImplCopyWith<$Res> {
  __$$HttpRequestFailureUnauthorizedImplCopyWithImpl(
      _$HttpRequestFailureUnauthorizedImpl _value,
      $Res Function(_$HttpRequestFailureUnauthorizedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HttpRequestFailureUnauthorizedImpl
    implements HttpRequestFailureUnauthorized {
  _$HttpRequestFailureUnauthorizedImpl();

  @override
  String toString() {
    return 'HttpRequestFailure.unauthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpRequestFailureUnauthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() network,
    required TResult Function() unauthorized,
    required TResult Function() unknow,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? network,
    TResult? Function()? unauthorized,
    TResult? Function()? unknow,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? network,
    TResult Function()? unauthorized,
    TResult Function()? unknow,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpRequestFailureNotFound value) notFound,
    required TResult Function(HttpRequestFailureNetwork value) network,
    required TResult Function(HttpRequestFailureUnauthorized value)
        unauthorized,
    required TResult Function(HttpRequestFailureUnknow value) unknow,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpRequestFailureNotFound value)? notFound,
    TResult? Function(HttpRequestFailureNetwork value)? network,
    TResult? Function(HttpRequestFailureUnauthorized value)? unauthorized,
    TResult? Function(HttpRequestFailureUnknow value)? unknow,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpRequestFailureNotFound value)? notFound,
    TResult Function(HttpRequestFailureNetwork value)? network,
    TResult Function(HttpRequestFailureUnauthorized value)? unauthorized,
    TResult Function(HttpRequestFailureUnknow value)? unknow,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class HttpRequestFailureUnauthorized implements HttpRequestFailure {
  factory HttpRequestFailureUnauthorized() =
      _$HttpRequestFailureUnauthorizedImpl;
}

/// @nodoc
abstract class _$$HttpRequestFailureUnknowImplCopyWith<$Res> {
  factory _$$HttpRequestFailureUnknowImplCopyWith(
          _$HttpRequestFailureUnknowImpl value,
          $Res Function(_$HttpRequestFailureUnknowImpl) then) =
      __$$HttpRequestFailureUnknowImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HttpRequestFailureUnknowImplCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res,
        _$HttpRequestFailureUnknowImpl>
    implements _$$HttpRequestFailureUnknowImplCopyWith<$Res> {
  __$$HttpRequestFailureUnknowImplCopyWithImpl(
      _$HttpRequestFailureUnknowImpl _value,
      $Res Function(_$HttpRequestFailureUnknowImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HttpRequestFailureUnknowImpl implements HttpRequestFailureUnknow {
  _$HttpRequestFailureUnknowImpl();

  @override
  String toString() {
    return 'HttpRequestFailure.unknow()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpRequestFailureUnknowImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() network,
    required TResult Function() unauthorized,
    required TResult Function() unknow,
  }) {
    return unknow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? network,
    TResult? Function()? unauthorized,
    TResult? Function()? unknow,
  }) {
    return unknow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? network,
    TResult Function()? unauthorized,
    TResult Function()? unknow,
    required TResult orElse(),
  }) {
    if (unknow != null) {
      return unknow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpRequestFailureNotFound value) notFound,
    required TResult Function(HttpRequestFailureNetwork value) network,
    required TResult Function(HttpRequestFailureUnauthorized value)
        unauthorized,
    required TResult Function(HttpRequestFailureUnknow value) unknow,
  }) {
    return unknow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpRequestFailureNotFound value)? notFound,
    TResult? Function(HttpRequestFailureNetwork value)? network,
    TResult? Function(HttpRequestFailureUnauthorized value)? unauthorized,
    TResult? Function(HttpRequestFailureUnknow value)? unknow,
  }) {
    return unknow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpRequestFailureNotFound value)? notFound,
    TResult Function(HttpRequestFailureNetwork value)? network,
    TResult Function(HttpRequestFailureUnauthorized value)? unauthorized,
    TResult Function(HttpRequestFailureUnknow value)? unknow,
    required TResult orElse(),
  }) {
    if (unknow != null) {
      return unknow(this);
    }
    return orElse();
  }
}

abstract class HttpRequestFailureUnknow implements HttpRequestFailure {
  factory HttpRequestFailureUnknow() = _$HttpRequestFailureUnknowImpl;
}
