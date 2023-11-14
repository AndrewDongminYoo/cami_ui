// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pet_breeds.g.dart';

/// 고양이/강아지 품종 선택을 위한 클래스입니다.
@JsonSerializable()
class PetBreeds extends Equatable {
  const PetBreeds({
    required this.animalGroup1Id,
    required this.animalGroup2Id,
    required this.animalGroup2Name,
    required this.breedSizeName,
  });

  factory PetBreeds.fromJson(Map<String, dynamic> json) {
    return _$PetBreedsFromJson(json);
  }

  @JsonKey(name: 'animal_group1_id', required: true)
  final int animalGroup1Id;
  @JsonKey(name: 'animal_group2_id', required: true)
  final int animalGroup2Id;
  @JsonKey(name: 'animal_group2_name', required: true)
  final String animalGroup2Name;
  @JsonKey(name: 'breed_size_name', required: true)
  final String breedSizeName;

  Map<String, dynamic> toJson() => _$PetBreedsToJson(this);

  PetBreeds copyWith({
    int? animalGroup1Id,
    int? animalGroup2Id,
    String? animalGroup2Name,
    String? breedSizeName,
  }) {
    return PetBreeds(
      animalGroup1Id: animalGroup1Id ?? this.animalGroup1Id,
      animalGroup2Id: animalGroup2Id ?? this.animalGroup2Id,
      animalGroup2Name: animalGroup2Name ?? this.animalGroup2Name,
      breedSizeName: breedSizeName ?? this.breedSizeName,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      animalGroup1Id,
      animalGroup2Id,
      animalGroup2Name,
      breedSizeName,
    ];
  }
}
