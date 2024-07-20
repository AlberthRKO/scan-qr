// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gift_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GiftCardModel _$GiftCardModelFromJson(Map<String, dynamic> json) {
  return _GiftCardModel.fromJson(json);
}

/// @nodoc
mixin _$GiftCardModel {
  int get id => throw _privateConstructorUsedError;
  String get dateString => throw _privateConstructorUsedError;
  int get orderId => throw _privateConstructorUsedError;
  String get track => throw _privateConstructorUsedError;
  double get currentBalance => throw _privateConstructorUsedError;
  int get statusType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftCardModelCopyWith<GiftCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftCardModelCopyWith<$Res> {
  factory $GiftCardModelCopyWith(
          GiftCardModel value, $Res Function(GiftCardModel) then) =
      _$GiftCardModelCopyWithImpl<$Res, GiftCardModel>;
  @useResult
  $Res call(
      {int id,
      String dateString,
      int orderId,
      String track,
      double currentBalance,
      int statusType});
}

/// @nodoc
class _$GiftCardModelCopyWithImpl<$Res, $Val extends GiftCardModel>
    implements $GiftCardModelCopyWith<$Res> {
  _$GiftCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateString = null,
    Object? orderId = null,
    Object? track = null,
    Object? currentBalance = null,
    Object? statusType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dateString: null == dateString
          ? _value.dateString
          : dateString // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as String,
      currentBalance: null == currentBalance
          ? _value.currentBalance
          : currentBalance // ignore: cast_nullable_to_non_nullable
              as double,
      statusType: null == statusType
          ? _value.statusType
          : statusType // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GiftCardModelImplCopyWith<$Res>
    implements $GiftCardModelCopyWith<$Res> {
  factory _$$GiftCardModelImplCopyWith(
          _$GiftCardModelImpl value, $Res Function(_$GiftCardModelImpl) then) =
      __$$GiftCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String dateString,
      int orderId,
      String track,
      double currentBalance,
      int statusType});
}

/// @nodoc
class __$$GiftCardModelImplCopyWithImpl<$Res>
    extends _$GiftCardModelCopyWithImpl<$Res, _$GiftCardModelImpl>
    implements _$$GiftCardModelImplCopyWith<$Res> {
  __$$GiftCardModelImplCopyWithImpl(
      _$GiftCardModelImpl _value, $Res Function(_$GiftCardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateString = null,
    Object? orderId = null,
    Object? track = null,
    Object? currentBalance = null,
    Object? statusType = null,
  }) {
    return _then(_$GiftCardModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dateString: null == dateString
          ? _value.dateString
          : dateString // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as String,
      currentBalance: null == currentBalance
          ? _value.currentBalance
          : currentBalance // ignore: cast_nullable_to_non_nullable
              as double,
      statusType: null == statusType
          ? _value.statusType
          : statusType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GiftCardModelImpl implements _GiftCardModel {
  _$GiftCardModelImpl(
      {required this.id,
      required this.dateString,
      required this.orderId,
      required this.track,
      required this.currentBalance,
      required this.statusType});

  factory _$GiftCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GiftCardModelImplFromJson(json);

  @override
  final int id;
  @override
  final String dateString;
  @override
  final int orderId;
  @override
  final String track;
  @override
  final double currentBalance;
  @override
  final int statusType;

  @override
  String toString() {
    return 'GiftCardModel(id: $id, dateString: $dateString, orderId: $orderId, track: $track, currentBalance: $currentBalance, statusType: $statusType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GiftCardModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateString, dateString) ||
                other.dateString == dateString) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.track, track) || other.track == track) &&
            (identical(other.currentBalance, currentBalance) ||
                other.currentBalance == currentBalance) &&
            (identical(other.statusType, statusType) ||
                other.statusType == statusType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, dateString, orderId, track, currentBalance, statusType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GiftCardModelImplCopyWith<_$GiftCardModelImpl> get copyWith =>
      __$$GiftCardModelImplCopyWithImpl<_$GiftCardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GiftCardModelImplToJson(
      this,
    );
  }
}

abstract class _GiftCardModel implements GiftCardModel {
  factory _GiftCardModel(
      {required final int id,
      required final String dateString,
      required final int orderId,
      required final String track,
      required final double currentBalance,
      required final int statusType}) = _$GiftCardModelImpl;

  factory _GiftCardModel.fromJson(Map<String, dynamic> json) =
      _$GiftCardModelImpl.fromJson;

  @override
  int get id;
  @override
  String get dateString;
  @override
  int get orderId;
  @override
  String get track;
  @override
  double get currentBalance;
  @override
  int get statusType;
  @override
  @JsonKey(ignore: true)
  _$$GiftCardModelImplCopyWith<_$GiftCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
