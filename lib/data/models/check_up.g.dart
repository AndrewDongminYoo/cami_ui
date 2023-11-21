// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_up.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckUp _$CheckUpFromJson(Map json) => CheckUp(
      detailImages: (json['detail_images'] as List<dynamic>?)
          ?.map(
              (e) => DetailImage.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      description: json['description'] as String?,
      featured: json['featured'] as bool?,
      fullName: json['full_name'] as String?,
      location: json['location'] as String?,
      nickname: json['nickname'] as String?,
      popular: json['popular'] as bool?,
      price: json['price'] as String?,
      questions: json['questions'] as int?,
      reviewRating: (json['review_rating'] as num?)?.toDouble(),
      reviewsCount: json['reviews_count'] as int?,
      short: json['short'] as String?,
      testname: json['testname'] as String?,
      thumbPath: json['thumb_path'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$CheckUpToJson(CheckUp instance) => <String, dynamic>{
      'detail_images': instance.detailImages,
      'description': instance.description,
      'featured': instance.featured,
      'full_name': instance.fullName,
      'location': instance.location,
      'nickname': instance.nickname,
      'popular': instance.popular,
      'price': instance.price,
      'questions': instance.questions,
      'review_rating': instance.reviewRating,
      'reviews_count': instance.reviewsCount,
      'short': instance.short,
      'testname': instance.testname,
      'thumb_path': instance.thumbPath,
      'type': instance.type,
    };
