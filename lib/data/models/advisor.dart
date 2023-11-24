// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'advisor.g.dart';

@JsonSerializable()
class Advisor extends Equatable {
  const Advisor({
    required this.index,
    required this.image,
    required this.jobTitle,
    required this.name,
    required this.description,
  });

  factory Advisor.fromJson(Map<String, dynamic> json) {
    return _$AdvisorFromJson(json);
  }

  final String index;
  final String image;
  @JsonKey(name: 'job_title')
  final String jobTitle;
  final String name;
  final String description;

  Map<String, dynamic> toJson() => _$AdvisorToJson(this);

  Advisor copyWith({
    String? index,
    String? image,
    String? jobTitle,
    String? name,
    String? description,
  }) {
    return Advisor(
      index: index ?? this.index,
      image: image ?? this.image,
      jobTitle: jobTitle ?? this.jobTitle,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [index, image, jobTitle, name, description];
}
