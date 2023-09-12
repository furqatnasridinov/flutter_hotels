import 'package:flutter_hotels/domain/handlers/http_service.dart';
import 'package:flutter_hotels/domain/interface/booking.dart';
import 'package:flutter_hotels/domain/interface/hotel.dart';
import 'package:flutter_hotels/domain/interface/rooms.dart';
import 'package:flutter_hotels/infrastructure/repositoty/booking_repository.dart';
import 'package:flutter_hotels/infrastructure/repositoty/hotel_repository.dart';
import 'package:flutter_hotels/infrastructure/repositoty/rooms_repository.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> setUpDependencies() async {
  getIt.registerLazySingleton<HttpService>(() => HttpService());
  getIt.registerSingleton<HotelRepositoryInterface>(HotelRepository());
  getIt.registerSingleton<RoomsRepositoryInterface>(RoomsRepository());
  getIt.registerSingleton<BookingRepositoryInterface>(BookingRepository());
}

final hotelRepo = getIt.get<HotelRepositoryInterface>();
final roomsRepo = getIt.get<RoomsRepositoryInterface>();
final bookingRepo = getIt.get<BookingRepositoryInterface>();
