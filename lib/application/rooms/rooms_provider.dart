import 'package:flutter_hotels/application/rooms/rooms_notifier.dart';
import 'package:flutter_hotels/application/rooms/rooms_state.dart';
import 'package:flutter_hotels/domain/di/dependency_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final roomsProvider = StateNotifierProvider<RoomsNotifier, RoomsState>(
  (ref) => RoomsNotifier(roomsRepo),
);
