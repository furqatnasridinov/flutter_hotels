import 'package:flutter_hotels/infrastructure/models/response/booking_info_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_state.freezed.dart';

@freezed
class BookingState with _$BookingState{
  const factory BookingState({
    @Default(false) bool isLoading,
    @Default(null) BookingInfoResponse? bookingInfos,
    @Default(false) bool isExpanded,
    @Default(null) int? tottalPrice,
  }) = _BookingState;
  const BookingState._();
}