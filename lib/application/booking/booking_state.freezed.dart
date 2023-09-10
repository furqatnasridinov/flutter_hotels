// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingState {
  bool get isLoading => throw _privateConstructorUsedError;
  BookingInfoResponse? get bookingInfos => throw _privateConstructorUsedError;
  bool get isExpanded => throw _privateConstructorUsedError;
  int? get tottalPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingStateCopyWith<BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
          BookingState value, $Res Function(BookingState) then) =
      _$BookingStateCopyWithImpl<$Res, BookingState>;
  @useResult
  $Res call(
      {bool isLoading,
      BookingInfoResponse? bookingInfos,
      bool isExpanded,
      int? tottalPrice});
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res, $Val extends BookingState>
    implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? bookingInfos = freezed,
    Object? isExpanded = null,
    Object? tottalPrice = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      bookingInfos: freezed == bookingInfos
          ? _value.bookingInfos
          : bookingInfos // ignore: cast_nullable_to_non_nullable
              as BookingInfoResponse?,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      tottalPrice: freezed == tottalPrice
          ? _value.tottalPrice
          : tottalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookingStateCopyWith<$Res>
    implements $BookingStateCopyWith<$Res> {
  factory _$$_BookingStateCopyWith(
          _$_BookingState value, $Res Function(_$_BookingState) then) =
      __$$_BookingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      BookingInfoResponse? bookingInfos,
      bool isExpanded,
      int? tottalPrice});
}

/// @nodoc
class __$$_BookingStateCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$_BookingState>
    implements _$$_BookingStateCopyWith<$Res> {
  __$$_BookingStateCopyWithImpl(
      _$_BookingState _value, $Res Function(_$_BookingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? bookingInfos = freezed,
    Object? isExpanded = null,
    Object? tottalPrice = freezed,
  }) {
    return _then(_$_BookingState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      bookingInfos: freezed == bookingInfos
          ? _value.bookingInfos
          : bookingInfos // ignore: cast_nullable_to_non_nullable
              as BookingInfoResponse?,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      tottalPrice: freezed == tottalPrice
          ? _value.tottalPrice
          : tottalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_BookingState extends _BookingState {
  const _$_BookingState(
      {this.isLoading = false,
      this.bookingInfos = null,
      this.isExpanded = false,
      this.tottalPrice = null})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final BookingInfoResponse? bookingInfos;
  @override
  @JsonKey()
  final bool isExpanded;
  @override
  @JsonKey()
  final int? tottalPrice;

  @override
  String toString() {
    return 'BookingState(isLoading: $isLoading, bookingInfos: $bookingInfos, isExpanded: $isExpanded, tottalPrice: $tottalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.bookingInfos, bookingInfos) ||
                other.bookingInfos == bookingInfos) &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded) &&
            (identical(other.tottalPrice, tottalPrice) ||
                other.tottalPrice == tottalPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, bookingInfos, isExpanded, tottalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookingStateCopyWith<_$_BookingState> get copyWith =>
      __$$_BookingStateCopyWithImpl<_$_BookingState>(this, _$identity);
}

abstract class _BookingState extends BookingState {
  const factory _BookingState(
      {final bool isLoading,
      final BookingInfoResponse? bookingInfos,
      final bool isExpanded,
      final int? tottalPrice}) = _$_BookingState;
  const _BookingState._() : super._();

  @override
  bool get isLoading;
  @override
  BookingInfoResponse? get bookingInfos;
  @override
  bool get isExpanded;
  @override
  int? get tottalPrice;
  @override
  @JsonKey(ignore: true)
  _$$_BookingStateCopyWith<_$_BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}
