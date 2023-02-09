import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:digital14_search/flags/error_state.dart';
import 'package:digital14_search/flags/request_method.dart';
import 'package:digital14_search/models/base_data_model.dart';
import 'package:digital14_search/models/response_model.dart';
import 'package:digital14_search/services/base_service.dart';
import 'package:digital14_search/services/impl/dio_client_service.dart';
import 'package:dio/dio.dart';

class RestService extends BaseService {
  RestService._() : super();

  final DioClientService _dioClientService = dioClientService;

  @override
  Future<void> init() async {
    await _dioClientService.init();
  }

  /// Method to do GET request.
  Future<ResponseModel<J, T>> get<J, T extends BaseDataModel<J>>(
      {required String url,
      required T defaultValue,
      Map<String, String>? queryParameters,
      Map<String, String>? headers}) async {
    final Dio dio = _dioClientService.client(
      method: RequestMethod.GET,
      headers: headers,
      queryParameters: queryParameters,
    );
    return await request<J, T>(dio, url, defaultValue);
  }

  /// This is the core method for execting all the REST calls.
  /// It needs three required parameters that is [dio] is rest client instance,
  /// [url] complete url of the request and [defaultValue] to create
  /// [BaseDataModel] from the resposne.
  Future<ResponseModel<J, T>> request<J, T extends BaseDataModel<J>>(
      Dio dio, String url, T defaultValue,
      {Function(int count, int total)? onReceiveProgress}) async {
    ResponseModel<J, T> result = ResponseModel<J, T>(
        statusCode: 0, data: defaultValue, errorState: ErrorState.unknown);
    try {
      if (!(await _checkConnectivity())) {
        result = result.copyWith(errorState: ErrorState.network);
        return result;
      }
      final Response<String> response =
          await dio.request<String>(url, onReceiveProgress: onReceiveProgress);
      result = result.copyWith(
        statusCode: response.statusCode,
        data: defaultValue.instanceFromJson(response.data ?? '') as T,
        errorState: ErrorState.noError,
      );
    } on SocketException catch (_) {
      result = result.copyWith(errorState: ErrorState.network);
    } on Exception catch (_) {
      result = result.copyWith(errorState: ErrorState.unknown);
    }
    return result;
  }

  Future<bool> _checkConnectivity() async {
    final ConnectivityResult connectivityResult =
        await Connectivity().checkConnectivity();

    return connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi;
  }
}

final RestService restService = RestService._();
