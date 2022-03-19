import 'package:pup_care/classes/vaccine.dart';
import 'breed.dart';
import 'package:pup_care/classes/medicine.dart';

class Pet {
  String petSpecies = 'default species';
  String name = 'default pet name';
  String profilePic = '/lib/assets/person.png';
  int age = 18;
  DateTime birthday = DateTime.now();
  bool mixedBreed = false;
  late List<Breed> breedList;
  String sizeCategory = 'default category';
  double weight = 0.01;
  late List<Medicine> medicineList;
  late List<Vaccine> vaccineList;
}
