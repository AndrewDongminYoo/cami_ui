// 🎯 Dart imports:
import 'dart:convert';

List<PetBreeds> catBreedsFromJson(String str) {
  final jsonData = json.decode(str);
  return List<PetBreeds>.from(jsonData.map(PetBreeds.fromJson));
}

String catBreedsToJson(List<PetBreeds> data) {
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
        breedSizeName: json['breed_size_name'],
      );

  /// 1: 멍멍, 2: 냥냥
  int animalGroup1Id;
  int animalGroup2Id;
  String animalGroup2Name;
  String breedSizeName;

  Map<String, dynamic> toJson() => {
        'animal_group1_id': animalGroup1Id,
        'animal_group2_id': animalGroup2Id,
        'animal_group2_name': animalGroup2Name,
        'breed_size_name': breedSizeName,
      };
}
