import 'package:flutter/widgets.dart';
import 'package:flutter_hotels/application/hotel/hotel_state.dart';
import 'package:flutter_hotels/domain/interface/hotel.dart';
import 'package:flutter_hotels/infrastructure/services/app_connectivity.dart';
import 'package:flutter_hotels/infrastructure/services/app_helpers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HotelNotifier extends StateNotifier<HotelState> {
  HotelNotifier(this._hotelRepositoryInterface) : super(const HotelState());
  final HotelRepositoryInterface _hotelRepositoryInterface;

  void setLoading() {
    state = state.copyWith(isLoading: true);
  }

  void stopLoading() {
    state = state.copyWith(isLoading: false);
  }

  Future<void> getHotel(BuildContext context) async {
    
    print("get hotel triggered");
    await Future.delayed(const Duration(milliseconds: 100));
    setLoading();
    final connect = await AppConnectivity().connectivity();
    if (connect) {
      print("connected to the internet");
      final response = await _hotelRepositoryInterface.getHotel();
      response.when(
        success: (data) {
          state = state.copyWith(hotel: data);
          print("success");
          stopLoading();
        },
        failure: (error, statusCode) {
          AppHelpers.showErrorSnack(context);
          print("failure");
        },
      );
      
    } else {
      print("not connected to the internet");
      AppHelpers.showNoConnectionSnack(context);
      
    }
  }

  void setActive(int index) {
    state = state.copyWith(activeIndex: index);
  }
}
