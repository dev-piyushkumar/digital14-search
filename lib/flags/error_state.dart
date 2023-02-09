enum ErrorState { noError, network, unknown }

extension ErrorStateExtension on ErrorState {
  String get string => toString().split('.').last;
}
