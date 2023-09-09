// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HotelState {
  bool get isLoading => throw _privateConstructorUsedError;
  HotelResponse? get hotel => throw _privateConstructorUsedError;
  int get activeIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotelStateCopyWith<HotelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelStateCopyWith<$Res> {
  factory $HotelStateCopyWith(
          HotelState value, $Res Function(HotelState) then) =
      _$HotelStateCopyWithImpl<$Res, HotelState>;
  @useResult
  $Res call({bool isLoading, HotelResponse? hotel, int activeIndex});
}

/// @nodoc
class _$HotelStateCopyWithImpl<$Res, $Val extends HotelState>
    implements $HotelStateCopyWith<$Res> {
  _$HotelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hotel = freezed,
    Object? activeIndex = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hotel: freezed == hotel
          ? _value.hotel
          : hotel // ignore: cast_nullable_to_non_nullable
              as HotelResponse?,
      activeIndex: null == activeIndex
          ? _value.activeIndex
          : activeIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HotelStateCopyWith<$Res>
    implements $HotelStateCopyWith<$Res> {
  factory _$$_HotelStateCopyWith(
          _$_HotelState value, $Res Function(_$_HotelState) then) =
      __$$_HotelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, HotelResponse? hotel, int activeIndex});
}

/// @nodoc
class __$$_HotelStateCopyWithImpl<$Res>
    extends _$HotelStateCopyWithImpl<$Res, _$_HotelState>
    implements _$$_HotelStateCopyWith<$Res> {
  __$$_HotelStateCopyWithImpl(
      _$_HotelState _value, $Res Function(_$_HotelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hotel = freezed,
    Object? activeIndex = null,
  }) {
    return _then(_$_HotelState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hotel: freezed == hotel
          ? _value.hotel
          : hotel // ignore: cast_nullable_to_non_nullable
              as HotelResponse?,
      activeIndex: null == activeIndex
          ? _value.activeIndex
          : activeIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HotelState extends _HotelState {
  const _$_HotelState(
      {this.isLoading = false, this.hotel = null, this.activeIndex = 0})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final HotelResponse? hotel;
  @override
  @JsonKey()
  final int activeIndex;

  @override
  String toString() {
    return 'HotelState(isLoading: $isLoading, hotel: $hotel, activeIndex: $activeIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotelState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hotel, hotel) || other.hotel == hotel) &&
            (identical(other.activeIndex, activeIndex) ||
                other.activeIndex == activeIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hotel, activeIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotelStateCopyWith<_$_HotelState> get copyWith =>
      __$$_HotelStateCopyWithImpl<_$_HotelState>(this, _$identity);
}

abstract class _HotelState extends HotelState {
  const factory _HotelState(
      {final bool isLoading,
      final HotelResponse? hotel,
      final int activeIndex}) = _$_HotelState;
  const _HotelState._() : super._();

  @override
  bool get isLoading;
  @override
  HotelResponse? get hotel;
  @override
  int get activeIndex;
  @override
  @JsonKey(ignore: true)
  _$$_HotelStateCopyWith<_$_HotelState> get copyWith =>
      throw _privateConstructorUsedError;
}
