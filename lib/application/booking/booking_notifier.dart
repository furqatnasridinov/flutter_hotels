import 'package:flutter/material.dart';
import 'package:flutter_hotels/application/booking/booking_state.dart';
import 'package:flutter_hotels/domain/interface/booking.dart';
import 'package:flutter_hotels/infrastructure/services/app_connectivity.dart';
import 'package:flutter_hotels/infrastructure/services/app_helpers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookingNotifier extends StateNotifier<BookingState> {
  BookingNotifier(this._bookingRepositoryInterface)
      : super(const BookingState());
  final BookingRepositoryInterface _bookingRepositoryInterface;

  Future<void> getBookingInfo(BuildContext context) async {
    print("getBookingInfo from BookingNotifier started");
    final connect = await AppConnectivity().connectivity();
    if (connect) {
      print("booking connected");
      final response = await _bookingRepositoryInterface.getHotelInfo();
      response.when(
        success: (data) {
          state = state.copyWith(bookingInfos: data);
          print("booking succes");
        },
        failure: (error, statusCode) {
          AppHelpers.showErrorSnack(context);
          print("booking failure");
        },
      );
    } else {
      print("booking not connected");
      AppHelpers.showNoConnectionSnack(context);
    }
  }

  void expand(bool value) {
    state = state.copyWith(isExpanded: value);
  }

  Future<void> calculateTottalPrice(
      int tourPrice, int fuelCharge, int serviceCharge) async {
    await Future.delayed(const Duration(seconds: 1));
    int sum = tourPrice + fuelCharge + serviceCharge;
    state = state.copyWith(tottalPrice: sum);
  }
}
