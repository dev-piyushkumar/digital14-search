import 'package:digital14_search/flags/error_state.dart';
import 'package:digital14_search/models/base_data_model.dart';

class ResponseModel<J, T extends BaseDataModel<J>> {
  ResponseModel({
    required this.statusCode,
    required this.data,
    required this.errorState,
  });

  final int statusCode;
  final T data;
  final ErrorState errorState;

  ResponseModel<J, T> copyWith({
    int? statusCode,
    T? data,
    ErrorState? errorState,
  }) {
    return ResponseModel<J, T>(
      statusCode: statusCode ?? this.statusCode,
      data: data ?? this.data,
      errorState: errorState ?? this.errorState,
    );
  }
}
