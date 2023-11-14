// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advisor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Advisor _$AdvisorFromJson(Map json) => Advisor(
      index: json['index'] as String?,
      image: json['image'] as String?,
      jobTitle: json['job_title'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$AdvisorToJson(Advisor instance) => <String, dynamic>{
      'index': instance.index,
      'image': instance.image,
      'job_title': instance.jobTitle,
      'name': instance.name,
      'description': instance.description,
    };
