// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'detail_image.g.dart';

@JsonSerializable()
class DetailImage extends Equatable {
  const DetailImage({this.height, this.imagePath, this.width});

  factory DetailImage.fromJson(Map<String, dynamic> json) {
    return _$DetailImageFromJson(json);
  }

  final double? height;
  @JsonKey(name: 'image_path')
  final String? imagePath;
  final double? width;

  Map<String, dynamic> toJson() => _$DetailImageToJson(this);

  DetailImage copyWith({
    double? height,
    String? imagePath,
    double? width,
  }) {
    return DetailImage(
      height: height ?? this.height,
      imagePath: imagePath ?? this.imagePath,
      width: width ?? this.width,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [height, imagePath, width];
}
