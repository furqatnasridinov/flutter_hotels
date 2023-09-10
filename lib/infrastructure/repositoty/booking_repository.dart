import 'package:dio/dio.dart';
import 'package:flutter_hotels/domain/handlers/api_result.dart';
import 'package:flutter_hotels/domain/handlers/network_exception.dart';
import 'package:flutter_hotels/domain/interface/booking.dart';
import 'package:flutter_hotels/infrastructure/models/response/booking_info_response.dart';
import 'package:flutter_hotels/infrastructure/services/app_constants.dart';

class BookingRepository implements BookingRepositoryInterface {
  @override
  Future<ApiResult<BookingInfoResponse>> getHotelInfo() async {
    Dio dio = Dio();
    try {
      print("BookingRepository started");
      final response = await dio.get(AppConstants.thirdPage);
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
