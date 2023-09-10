import 'package:flutter_hotels/infrastructure/models/response/rooms_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rooms_state.freezed.dart';

@freezed
class RoomsState with _$RoomsState {
  const factory RoomsState({
    @Default(false) bool isLoading,
    @Default(null) RoomsResponse? rooms,
    @Default(0) int activeIndex,
  }) = _RoomState;

  const RoomsState._();
}
