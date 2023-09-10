// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rooms_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomsState {
  bool get isLoading => throw _privateConstructorUsedError;
  RoomsResponse? get rooms => throw _privateConstructorUsedError;
  int get activeIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomsStateCopyWith<RoomsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsStateCopyWith<$Res> {
  factory $RoomsStateCopyWith(
          RoomsState value, $Res Function(RoomsState) then) =
      _$RoomsStateCopyWithImpl<$Res, RoomsState>;
  @useResult
  $Res call({bool isLoading, RoomsResponse? rooms, int activeIndex});
}

/// @nodoc
class _$RoomsStateCopyWithImpl<$Res, $Val extends RoomsState>
    implements $RoomsStateCopyWith<$Res> {
  _$RoomsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? rooms = freezed,
    Object? activeIndex = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as RoomsResponse?,
      activeIndex: null == activeIndex
          ? _value.activeIndex
          : activeIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomStateCopyWith<$Res>
    implements $RoomsStateCopyWith<$Res> {
  factory _$$_RoomStateCopyWith(
          _$_RoomState value, $Res Function(_$_RoomState) then) =
      __$$_RoomStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, RoomsResponse? rooms, int activeIndex});
}

/// @nodoc
class __$$_RoomStateCopyWithImpl<$Res>
    extends _$RoomsStateCopyWithImpl<$Res, _$_RoomState>
    implements _$$_RoomStateCopyWith<$Res> {
  __$$_RoomStateCopyWithImpl(
      _$_RoomState _value, $Res Function(_$_RoomState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? rooms = freezed,
    Object? activeIndex = null,
  }) {
    return _then(_$_RoomState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as RoomsResponse?,
      activeIndex: null == activeIndex
          ? _value.activeIndex
          : activeIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RoomState extends _RoomState {
  const _$_RoomState(
      {this.isLoading = false, this.rooms = null, this.activeIndex = 0})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final RoomsResponse? rooms;
  @override
  @JsonKey()
  final int activeIndex;

  @override
  String toString() {
    return 'RoomsState(isLoading: $isLoading, rooms: $rooms, activeIndex: $activeIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.rooms, rooms) || other.rooms == rooms) &&
            (identical(other.activeIndex, activeIndex) ||
                other.activeIndex == activeIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, rooms, activeIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomStateCopyWith<_$_RoomState> get copyWith =>
      __$$_RoomStateCopyWithImpl<_$_RoomState>(this, _$identity);
}

abstract class _RoomState extends RoomsState {
  const factory _RoomState(
      {final bool isLoading,
      final RoomsResponse? rooms,
      final int activeIndex}) = _$_RoomState;
  const _RoomState._() : super._();

  @override
  bool get isLoading;
  @override
  RoomsResponse? get rooms;
  @override
  int get activeIndex;
  @override
  @JsonKey(ignore: true)
  _$$_RoomStateCopyWith<_$_RoomState> get copyWith =>
      throw _privateConstructorUsedError;
}
