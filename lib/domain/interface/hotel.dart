import 'package:flutter_hotels/domain/handlers/api_result.dart';
import 'package:flutter_hotels/infrastructure/models/response/hotel_response.dart';

abstract class HotelRepositoryInterface {
  Future<ApiResult<HotelResponse>> getHotel();
}
