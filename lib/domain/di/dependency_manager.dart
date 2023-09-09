import 'package:flutter_hotels/domain/interface/hotel.dart';
import 'package:flutter_hotels/domain/interface/rooms.dart';
import 'package:flutter_hotels/infrastructure/repositoty/hotel_repository.dart';
import 'package:flutter_hotels/infrastructure/repositoty/rooms_repository.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> setUpDependencies() async {
  getIt.registerSingleton<HotelRepositoryInterface>(HotelRepository());
  getIt.registerSingleton<RoomsRepositoryInterface>(RoomsRepository());
}

final hotelRepo = getIt.get<HotelRepositoryInterface>();
final roomsRepo = getIt.get<RoomsRepositoryInterface>();
