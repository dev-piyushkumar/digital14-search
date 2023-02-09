import 'dart:io';

import 'package:digital14_search/flags/request_method.dart';
import 'package:digital14_search/services/base_service.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

class DioClientService extends BaseService {
  DioClientService._() : super();

  final Dio _dio = Dio();

  @override
  Future<void> init() async {
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return true;
      };
      return client;
    };
  }

  Dio client({
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    RequestMethod method = RequestMethod.GET,
  }) {
    _dio.options = BaseOptions(
        method: method.string,
        headers: getCommonHeaders(headers: headers),
        queryParameters: (queryParameters != null)
            ? getCommonQueryParams(queryParameters: queryParameters)
            : null,
        connectTimeout: 30000);
    return _dio;
  }

  Map<String, dynamic> getCommonHeaders({Map<String, dynamic>? headers}) {
    final Map<String, dynamic> result = <String, dynamic>{
      'Content-Type': 'application/json',
    };
    if ((headers ?? <String, dynamic>{}).isNotEmpty) {
      for (final MapEntry<String, dynamic> e
          in (headers ?? <String, dynamic>{}).entries) {
        result[e.key] = e.value;
      }
    }
    return result;
  }

  Map<String, dynamic> getCommonQueryParams(
      {Map<String, dynamic>? queryParameters}) {
    final Map<String, dynamic> result = <String, dynamic>{
      'client_id': 'MzE4MTY0NzR8MTY3NTgwMDg5MS40MjY5MTM1',
    };
    if ((queryParameters ?? <String, dynamic>{}).isNotEmpty) {
      for (final MapEntry<String, dynamic> e
          in (queryParameters ?? <String, dynamic>{}).entries) {
        result[e.key] = e.value;
      }
    }
    return result;
  }
}

final DioClientService dioClientService = DioClientService._();
