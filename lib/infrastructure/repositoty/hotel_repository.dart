import 'package:flutter_hotels/domain/di/injection.dart';
import 'package:flutter_hotels/domain/handlers/http_service.dart';
import 'package:flutter_hotels/domain/handlers/network_exception.dart';
import 'package:flutter_hotels/domain/interface/hotel.dart';
import 'package:flutter_hotels/infrastructure/models/response/hotel_response.dart';
import 'package:flutter_hotels/infrastructure/services/app_constants.dart';
import '../../domain/handlers/api_result.dart';

class HotelRepository implements HotelRepositoryInterface {
  @override
  Future<ApiResult<HotelResponse>> getHotel() async {
    try {
      final cliet = inject<HttpService>().clientDio();
      final response = await cliet.get(AppConstants.firstPageEndPoint);
      return ApiResult.success(data: HotelResponse.fromJson(response.data));
    } catch (error) {
      return ApiResult.failure(
        error: NetworkExceptions.getDioException(error),
        statusCode: NetworkExceptions.getDioStatus(error),
      );
    }
  }
}
