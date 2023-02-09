import 'package:json_annotation/json_annotation.dart';

part 'announcements.g.dart';

@JsonSerializable()
class Announcements {
  Announcements();

  factory Announcements.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementsFromJson(json);

  Map<String, dynamic> toJson() {
    return _$AnnouncementsToJson(this);
  }
}
