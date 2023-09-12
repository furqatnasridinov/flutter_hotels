import 'package:flutter_hotels/domain/di/injection.dart';
import 'package:flutter_hotels/domain/handlers/api_result.dart';
import 'package:flutter_hotels/domain/handlers/http_service.dart';
import 'package:flutter_hotels/domain/handlers/network_exception.dart';
import 'package:flutter_hotels/domain/interface/rooms.dart';
import 'package:flutter_hotels/infrastructure/models/response/rooms_response.dart';
import 'package:flutter_hotels/infrastructure/services/app_constants.dart';

class RoomsRepository implements RoomsRepositoryInterface {
  @override
  Future<ApiResult<RoomsResponse>> getRooms() async {
    try {
      final client = inject<HttpService>().clientDio();
      final response = await client.get(AppConstants.secondPageEndPoint);
      return ApiResult.success(data: RoomsResponse.fromJson(response.data));
    } catch (e) {
      return ApiResult.failure(
        error: NetworkExceptions.getDioException(e),
        statusCode: NetworkExceptions.getDioStatus(e),
      );
    }
  }
}
