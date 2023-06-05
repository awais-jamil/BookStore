import 'package:dio/dio.dart';

class DioClient {
  const DioClient._();

  factory DioClient() => instance;
  static const instance = DioClient._();

  Dio initDioClient() {
    const thirtySeconds = Duration(seconds: 30000);
    final globalDio = Dio(
      BaseOptions(
        connectTimeout: thirtySeconds,
        receiveTimeout: thirtySeconds,
        sendTimeout: thirtySeconds,
        followRedirects: true,
      ),
    );

    return globalDio;
  }
}
