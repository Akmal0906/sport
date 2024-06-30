// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchModel _$SearchModelFromJson(Map<String, dynamic> json) => SearchModel(
      team: Team.fromJson(json['team'] as Map<String, dynamic>),
      name: json['name']??'NoName' as String,
      slug: json['slug'] ?? 'No slug'as String,
      jerseyNumber: json['jerseyNumber'] ?? '0'as String,
      position: json['position'] ?? 'No Position'as String,
    );

Map<String, dynamic> _$SearchModelToJson(SearchModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'position': instance.position,
      'jerseyNumber': instance.jerseyNumber,
      'team': instance.team,
    };
