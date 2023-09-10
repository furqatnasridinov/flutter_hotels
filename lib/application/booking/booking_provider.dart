import 'package:flutter_hotels/application/booking/booking_notifier.dart';
import 'package:flutter_hotels/application/booking/booking_state.dart';
import 'package:flutter_hotels/domain/di/dependency_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bookingProvider = StateNotifierProvider<BookingNotifier, BookingState>(
  (ref) => BookingNotifier(bookingRepo),
);
