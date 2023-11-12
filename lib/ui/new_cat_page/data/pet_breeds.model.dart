// 🎯 Dart imports:
import 'dart:convert';

List<PetBreeds> petBreedsFromJson(String str) {
  final jsonData = json.decode(str);
  return List<PetBreeds>.from(jsonData
      .map((dynamic data) => PetBreeds.fromJson(data as Map<String, dynamic>)));
}

String petBreedsToJson(List<PetBreeds> data) {
  final dyn = List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}

class PetBreeds {
  PetBreeds({
    required this.animalGroup1Id,
    required this.animalGroup2Id,
    required this.animalGroup2Name,
    required this.breedSizeName,
  });

  factory PetBreeds.fromJson(Map<String, dynamic> json) => PetBreeds(
        animalGroup1Id: json['animal_group1_id'],
        animalGroup2Id: json['animal_group2_id'],
        animalGroup2Name: json['animal_group2_name'],
        breedSizeName: breedSizeValues.map[json['breed_size_name']]!,
      );
  int animalGroup1Id;
  int animalGroup2Id;
  String animalGroup2Name;
  BreedSizeName breedSizeName;

  Map<String, dynamic> toJson() => {
        'animal_group1_id': animalGroup1Id,
        'animal_group2_id': animalGroup2Id,
        'animal_group2_name': animalGroup2Name,
        'breed_size_name': breedSizeValues.reverse[breedSizeName],
      };
}

enum BreedSizeName { EMPTY, MEDIUM, LARGE, SMALL }

final breedSizeValues = EnumValues({
  '': BreedSizeName.EMPTY,
  '중형': BreedSizeName.MEDIUM,
  '소형': BreedSizeName.SMALL,
  '대형': BreedSizeName.LARGE
});

class EnumValues<T> {
  EnumValues(this.map);
  Map<String, T> map;
  Map<T, String>? reverseMap;

  Map<T, String> get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap!;
  }
}
