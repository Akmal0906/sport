import 'package:json_annotation/json_annotation.dart';
import 'package:sport/domain/models/sport/sport_model.dart';
part 'team_model.g.dart';
@JsonSerializable()

class Team{
final String name;
final String gender;
final Sport sport;

const Team({required this.name,required this.sport,required this.gender});

factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

Map<String, dynamic> toJson() => _$TeamToJson(this);

}