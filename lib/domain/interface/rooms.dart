import 'package:flutter_hotels/domain/handlers/api_result.dart';
import 'package:flutter_hotels/infrastructure/models/response/rooms_response.dart';

abstract class RoomsRepositoryInterface {
  Future<ApiResult<RoomsResponse>> getRooms();
}
