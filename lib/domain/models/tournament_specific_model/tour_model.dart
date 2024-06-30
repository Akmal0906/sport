import 'package:json_annotation/json_annotation.dart';
part 'tour_model.g.dart';

@JsonSerializable()

class TourModel{
  final int tournamentId;
  final String name;
  final String slug;
  TourModel({required this.tournamentId,required this.name,required this.slug});

  factory TourModel.fromJson(Map<String, dynamic> json) => _$TourModelFromJson(json);
  Map<String, dynamic> toJson() => _$TourModelToJson(this);

}