import 'package:json_annotation/json_annotation.dart';

import '../sport/sport_model.dart';
part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel{
  final String name;
  final String slug;
  final int priority;
  final String flag;
  final Sport sport;
  CategoryModel({required this.name,required this.slug,required this.flag,required this.priority,required this.sport});


  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);

}