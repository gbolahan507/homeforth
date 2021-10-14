import 'package:dio/dio.dart';
import 'package:revieuus/core/api/messages.dart';

class BaseAPI {
  Dio dio = Dio();

  String baseUrl = kBaseUrl;
  Options defaultOptions = Options(
      sendTimeout: 20000, // 20 seconds
      receiveTimeout: 20000, // 20 seconds
      headers: {'Content-Type': 'application/json'},
      contentType: 'application/json',
      validateStatus: (status) => status! < 500);
}
