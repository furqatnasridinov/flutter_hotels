import 'package:flutter_hotels/domain/di/injection.dart';
import 'package:flutter_hotels/domain/handlers/api_result.dart';
import 'package:flutter_hotels/domain/handlers/http_service.dart';
import 'package:flutter_hotels/domain/handlers/network_exception.dart';
import 'package:flutter_hotels/domain/interface/booking.dart';
import 'package:flutter_hotels/infrastructure/models/response/booking_info_response.dart';
import 'package:flutter_hotels/infrastructure/services/app_constants.dart';

class BookingRepository implements BookingRepositoryInterface {
  @override
  Future<ApiResult<BookingInfoResponse>> getHotelInfo() async {
    try {
      print("BookingRepository started");
      final client = inject<HttpService>().clientDio();
      final response = await client.get(AppConstants.thirdPageEndPoint);
      return ApiResult.success(
        data: BookingInfoResponse.fromJson(response.data),
      );
    } catch (error) {
      print("BookingRepository catched error");
      return ApiResult.failure(
        error: NetworkExceptions.getDioException(error),
        statusCode: NetworkExceptions.getDioStatus(error),
      );
    }
  }
}
