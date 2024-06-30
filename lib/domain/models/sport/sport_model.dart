import 'package:json_annotation/json_annotation.dart';
part 'sport_model.g.dart';
@JsonSerializable()
class Sport{
  final String name;
  Sport({required this.name});

  factory Sport.fromJson(Map<String, dynamic> json) => _$SportFromJson(json);

  Map<String, dynamic> toJson() => _$SportToJson(this);

}