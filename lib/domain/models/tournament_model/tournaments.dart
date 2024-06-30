import 'package:sport/domain/models/tournament_specific_model/tour_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'tournaments.g.dart';
@JsonSerializable()

class Tournaments{
  final List<TourModel> tourModel;
  const Tournaments({required this.tourModel});

  factory Tournaments.fromJson(Map<String, dynamic> json) => _$TournamentsFromJson(json);
  Map<String, dynamic> toJson() => _$TournamentsToJson(this);



}