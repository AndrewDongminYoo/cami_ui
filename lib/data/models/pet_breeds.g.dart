// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_breeds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PetBreeds _$PetBreedsFromJson(Map json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'animal_group1_id',
      'animal_group2_id',
      'animal_group2_name',
      'breed_size_name'
    ],
  );
  return PetBreeds(
    animalGroup1Id: json['animal_group1_id'] as int,
    animalGroup2Id: json['animal_group2_id'] as int,
    animalGroup2Name: json['animal_group2_name'] as String,
    breedSizeName: json['breed_size_name'] as String,
  );
}

Map<String, dynamic> _$PetBreedsToJson(PetBreeds instance) => <String, dynamic>{
      'animal_group1_id': instance.animalGroup1Id,
      'animal_group2_id': instance.animalGroup2Id,
      'animal_group2_name': instance.animalGroup2Name,
      'breed_size_name': instance.breedSizeName,
    };
