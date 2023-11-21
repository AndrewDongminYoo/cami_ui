// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailImage _$DetailImageFromJson(Map json) => DetailImage(
      height: (json['height'] as num?)?.toDouble(),
      imagePath: json['image_path'] as String?,
      width: (json['width'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DetailImageToJson(DetailImage instance) =>
    <String, dynamic>{
      'height': instance.height,
      'image_path': instance.imagePath,
      'width': instance.width,
    };
