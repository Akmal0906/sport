// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      name: json['name'] as String,
      slug: json['slug'] as String,
      flag: json['flag'] as String,
      priority: (json['priority'] as num).toInt(),
      sport: Sport.fromJson(json['sport'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'priority': instance.priority,
      'flag': instance.flag,
      'sport': instance.sport,
    };
