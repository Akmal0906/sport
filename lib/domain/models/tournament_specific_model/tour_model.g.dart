// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TourModel _$TourModelFromJson(Map<String, dynamic> json) => TourModel(
      tournamentId: (json['tournamentId'] as num).toInt()??0,
      name: json['name'] as String??'',
      slug: json['slug'] as String??'',
    );

Map<String, dynamic> _$TourModelToJson(TourModel instance) => <String, dynamic>{
      'tournamentId': instance.tournamentId,
      'name': instance.name,
      'slug': instance.slug,
    };
