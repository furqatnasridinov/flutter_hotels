import 'package:flutter/material.dart';
import 'package:flutter_hotels/application/rooms/rooms_state.dart';
import 'package:flutter_hotels/domain/interface/rooms.dart';
import 'package:flutter_hotels/infrastructure/services/app_connectivity.dart';
import 'package:flutter_hotels/infrastructure/services/app_helpers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RoomsNotifier extends StateNotifier<RoomsState> {
  RoomsNotifier(this._roomsRepositoryInterface) : super(const RoomsState());
  final RoomsRepositoryInterface _roomsRepositoryInterface;

  Future<void> getRooms(BuildContext context) async {
    final connect = await AppConnectivity().connectivity();
    if (connect) {
      final response = await _roomsRepositoryInterface.getRooms();
      response.when(
        success: (data) {
          state = state.copyWith(rooms: data);
        },
        failure: (error, statusCode) {
          AppHelpers.showErrorSnack(context);
        },
      );
    } else {
      AppHelpers.showNoConnectionSnack(context);
    }
  }
  void setActiveIndex(int index){
    state = state.copyWith(activeIndex: index);
  }
}
