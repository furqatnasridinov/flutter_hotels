import 'package:flutter_hotels/application/hotel/hotel_notifier.dart';
import 'package:flutter_hotels/application/hotel/hotel_state.dart';
import 'package:flutter_hotels/domain/di/dependency_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final hotelProvider = StateNotifierProvider<HotelNotifier, HotelState>(
  (ref) => HotelNotifier(hotelRepo),
);
