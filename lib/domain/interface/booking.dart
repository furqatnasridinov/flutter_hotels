import 'package:flutter_hotels/domain/handlers/api_result.dart';
import 'package:flutter_hotels/infrastructure/models/response/booking_info_response.dart';

abstract class BookingRepositoryInterface{
  Future <ApiResult<BookingInfoResponse>> getHotelInfo();
}