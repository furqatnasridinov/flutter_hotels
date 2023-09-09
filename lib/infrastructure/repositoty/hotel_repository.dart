import 'package:dio/dio.dart';
import 'package:flutter_hotels/domain/handlers/network_exception.dart';
import 'package:flutter_hotels/domain/interface/hotel.dart';
import 'package:flutter_hotels/infrastructure/models/response/hotel_response.dart';
import 'package:flutter_hotels/infrastructure/services/app_constants.dart';
import '../../domain/handlers/api_result.dart';

class HotelRepository implements HotelRepositoryInterface {
  @override
  Future<ApiResult<HotelResponse>> getHotel() async {
    try {
      Dio dio = Dio();
      final response = await dio.get(AppConstants.hotelsPageUrl);
      return ApiResult.success(data: HotelResponse.fromJson(response.data));
    } catch (error) {
      return ApiResult.failure(
        error: NetworkExceptions.getDioException(error),
        statusCode: NetworkExceptions.getDioStatus(error),
      );
    }
  }
}
