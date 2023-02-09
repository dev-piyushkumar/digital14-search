// ignore_for_file: constant_identifier_names

enum RequestMethod { GET, POST, PUT, DELETE, OPTIONS }

extension RequestMethodExtension on RequestMethod {
  String get string => toString().split('.').last;
}
