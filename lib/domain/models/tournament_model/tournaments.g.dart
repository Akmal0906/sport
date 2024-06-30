// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournaments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tournaments _$TournamentsFromJson(Map<String, dynamic> json) => Tournaments(
      tourModel: ((json['0']) as List<dynamic>)
          .map((e) => TourModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TournamentsToJson(Tournaments instance) =>
    <String, dynamic>{
      'tourModel': instance.tourModel,
    };
