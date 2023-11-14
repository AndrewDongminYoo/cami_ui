// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'check_up.g.dart';

/// 주요 프로덕트인 심리검사 클래스입니다.
@JsonSerializable()
class CheckUp extends Equatable {
  const CheckUp({
    this.description,
    this.imagePath,
    this.location,
    this.shortTitle,
    this.title,
    this.type,
  });

  factory CheckUp.fromJson(Map<String, dynamic> json) {
    return _$CheckUpFromJson(json);
  }

  final String? description;
  @JsonKey(name: 'image_path')
  final String? imagePath;
  final String? location;
  @JsonKey(name: 'short_title')
  final String? shortTitle;
  final String? title;
  final String? type;

  Map<String, dynamic> toJson() => _$CheckUpToJson(this);

  CheckUp copyWith({
    String? description,
    String? imagePath,
    String? location,
    String? shortTitle,
    String? title,
    String? type,
  }) {
    return CheckUp(
      description: description ?? this.description,
      imagePath: imagePath ?? this.imagePath,
      location: location ?? this.location,
      shortTitle: shortTitle ?? this.shortTitle,
      title: title ?? this.title,
      type: type ?? this.type,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      description,
      imagePath,
      location,
      shortTitle,
      title,
      type,
    ];
  }
}
