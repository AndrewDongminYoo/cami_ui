// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// 🌎 Project imports:
import 'detail_image.dart';

part 'check_up.g.dart';

@JsonSerializable()
class CheckUp extends Equatable {
  const CheckUp({
    this.description,
    this.detailImages,
    this.duration,
    this.featured,
    this.fullName,
    this.location,
    this.nickname,
    this.popular,
    this.price,
    this.questions,
    this.reviewRating,
    this.reviewsCount,
    this.short,
    this.testname,
    this.thumbPath,
    this.type,
  });

  factory CheckUp.fromJson(Map<String, dynamic> json) {
    return _$CheckUpFromJson(json);
  }

  final String? description;
  @JsonKey(name: 'detail_images')
  final List<DetailImage>? detailImages;
  final int? duration;
  final bool? featured;
  @JsonKey(name: 'full_name')
  final String? fullName;
  final String? location;
  final String? nickname;
  final bool? popular;
  final String? price;
  final int? questions;
  @JsonKey(name: 'review_rating')
  final double? reviewRating;
  @JsonKey(name: 'reviews_count')
  final int? reviewsCount;
  final String? short;
  final String? testname;
  @JsonKey(name: 'thumb_path')
  final String? thumbPath;
  final String? type;

  Map<String, dynamic> toJson() => _$CheckUpToJson(this);

  CheckUp copyWith({
    String? description,
    List<DetailImage>? detailImages,
    int? duration,
    bool? featured,
    String? fullName,
    String? location,
    String? nickname,
    bool? popular,
    String? price,
    int? questions,
    double? reviewRating,
    int? reviewsCount,
    String? short,
    String? testname,
    String? thumbPath,
    String? type,
  }) {
    return CheckUp(
      description: description ?? this.description,
      detailImages: detailImages ?? this.detailImages,
      duration: duration ?? this.duration,
      featured: featured ?? this.featured,
      fullName: fullName ?? this.fullName,
      location: location ?? this.location,
      nickname: nickname ?? this.nickname,
      popular: popular ?? this.popular,
      price: price ?? this.price,
      questions: questions ?? this.questions,
      reviewRating: reviewRating ?? this.reviewRating,
      reviewsCount: reviewsCount ?? this.reviewsCount,
      short: short ?? this.short,
      testname: testname ?? this.testname,
      thumbPath: thumbPath ?? this.thumbPath,
      type: type ?? this.type,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      description,
      detailImages,
      duration,
      featured,
      fullName,
      location,
      nickname,
      popular,
      price,
      questions,
      reviewRating,
      reviewsCount,
      short,
      testname,
      thumbPath,
      type,
    ];
  }
}
