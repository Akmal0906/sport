// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Team _$TeamFromJson(Map<String, dynamic> json) => Team(
      name: json['name'] as String,
      sport: Sport.fromJson(json['sport'] as Map<String, dynamic>),
      gender: json['gender'] ?? 'Male',
    );

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'name': instance.name,
      'gender': instance.gender,
      'sport': instance.sport,
    };
