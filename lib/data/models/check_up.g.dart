// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_up.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckUp _$CheckUpFromJson(Map json) => CheckUp(
      description: json['description'] as String?,
      featured: json['featured'] as bool?,
      imagePath: json['image_path'] as String?,
      location: json['location'] as String?,
      popular: json['popular'] as bool?,
      shortTitle: json['short_title'] as String?,
      title: json['title'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$CheckUpToJson(CheckUp instance) => <String, dynamic>{
      'description': instance.description,
      'featured': instance.featured,
      'image_path': instance.imagePath,
      'location': instance.location,
      'popular': instance.popular,
      'short_title': instance.shortTitle,
      'title': instance.title,
      'type': instance.type,
    };
