import 'package:flutter_hotels/infrastructure/models/response/hotel_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_state.freezed.dart';

@freezed
class HotelState with _$HotelState{
  const factory HotelState({
    @Default(false) bool isLoading,
    @Default(null) HotelResponse? hotel,
    @Default(0) int activeIndex,
  }) = _HotelState;
  const HotelState._();
}