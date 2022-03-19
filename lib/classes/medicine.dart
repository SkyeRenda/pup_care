abstract class Medical {
  String name = 'default medicine name';
  DateTime frequency = DateTime.now();
}

class Vaccine extends Medical {
  DateTime lastDate = DateTime.now();
  DateTime dueTime = DateTime.now();
}

class Medicine {
  double dosage = 0;
  double amount = 0;
  DateTime remaining = DateTime.now();
}
