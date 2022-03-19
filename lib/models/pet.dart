import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:pup_care/models/medicine.dart';
import 'package:pup_care/models/vaccine.dart';
import 'breed.dart';

class Pet {
  final String petSpecies = 'default species';
  final String name = 'default pet name';
  final String profilePic = '/lib/assets/person.png';
  final int age = 18;
  final DateTime birthday = DateTime.now();
  final bool mixedBreed = false;
  final List<Breed> breedList;
  final String sizeCategory = 'default category';
  final double weight = 0.01;
  final List<Medicine> medicineList;
  final List<Vaccine> vaccineList;
  Pet({
    required this.breedList,
    required this.medicineList,
    required this.vaccineList,
  });

  Pet copyWith({
    List<Breed>? breedList,
    List<Medicine>? medicineList,
    List<Vaccine>? vaccineList,
  }) {
    return Pet(
      breedList: breedList ?? this.breedList,
      medicineList: medicineList ?? this.medicineList,
      vaccineList: vaccineList ?? this.vaccineList,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'breedList': breedList.map((x) => x.toMap()).toList()});
    result
        .addAll({'medicineList': medicineList.map((x) => x.toMap()).toList()});
    result.addAll({'vaccineList': vaccineList.map((x) => x.toMap()).toList()});

    return result;
  }

  factory Pet.fromMap(Map<String, dynamic> map) {
    return Pet(
      breedList:
          List<Breed>.from(map['breedList']?.map((x) => Breed.fromMap(x))),
      medicineList: List<Medicine>.from(
          map['medicineList']?.map((x) => Medicine.fromMap(x))),
      vaccineList: List<Vaccine>.from(
          map['vaccineList']?.map((x) => Vaccine.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Pet.fromJson(String source) => Pet.fromMap(json.decode(source));

  @override
  String toString() =>
      'Pet(breedList: $breedList, medicineList: $medicineList, vaccineList: $vaccineList)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Pet &&
        listEquals(other.breedList, breedList) &&
        listEquals(other.medicineList, medicineList) &&
        listEquals(other.vaccineList, vaccineList);
  }

  @override
  int get hashCode =>
      breedList.hashCode ^ medicineList.hashCode ^ vaccineList.hashCode;
}
