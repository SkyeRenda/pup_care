import 'dart:convert';

import 'package:pup_care/models/medicinal.dart';

class Vaccine extends Medical {
  DateTime lastDate;
  DateTime dueDate;
  Vaccine({
    required this.lastDate,
    required this.dueDate,
  }) : super(name: 'default medicine name');

  Vaccine copyWith({
    DateTime? lastDate,
    DateTime? dueDate,
  }) {
    return Vaccine(
      lastDate: lastDate ?? this.lastDate,
      dueDate: dueDate ?? this.dueDate,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'lastDate': lastDate.millisecondsSinceEpoch});
    result.addAll({'dueDate': dueDate.millisecondsSinceEpoch});

    return result;
  }

  factory Vaccine.fromMap(Map<String, dynamic> map) {
    return Vaccine(
      lastDate: DateTime.fromMillisecondsSinceEpoch(map['lastDate']),
      dueDate: DateTime.fromMillisecondsSinceEpoch(map['dueDate']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Vaccine.fromJson(String source) =>
      Vaccine.fromMap(json.decode(source));

  @override
  String toString() => 'Vaccine(lastDate: $lastDate, dueDate: $dueDate)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Vaccine &&
        other.lastDate == lastDate &&
        other.dueDate == dueDate;
  }

  @override
  int get hashCode => lastDate.hashCode ^ dueDate.hashCode;
}
