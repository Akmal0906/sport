import 'package:json_annotation/json_annotation.dart';
import 'package:sport/domain/models/team/team_model.dart';
part 'search_model.g.dart';
@JsonSerializable()

class SearchModel{
  final String name;
  final String slug;
  final String position;
  final String jerseyNumber;
  final Team team;
  const SearchModel({required this.team,required this.name,required this.slug,required this.jerseyNumber,required this.position});

  factory SearchModel.fromJson(Map<String, dynamic> json) => _$SearchModelFromJson(json);

  Map<String, dynamic> toJson() => _$SearchModelToJson(this);

}