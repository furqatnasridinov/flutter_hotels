import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter_hotels/infrastructure/services/app_constants.dart';

class HttpService {
  Dio clientDio() {
    Dio dio = Dio();
    dio.options.headers["Content-Type"] = "application/json";
    dio.options.connectTimeout =
        const Duration(seconds: AppConstants.connectionTimeout);
    dio.options.receiveTimeout =
        const Duration(seconds: AppConstants.recieveTimeout);
    dio.options.sendTimeout = const Duration(seconds: AppConstants.sendTimeout);
    dio.options.baseUrl = AppConstants.baseUrl;
    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
        HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;

    return dio;
  }
}
