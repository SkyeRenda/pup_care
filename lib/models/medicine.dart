import 'dart:convert';

import 'package:pup_care/models/medicinal.dart';

class Medicine extends Medical {
  double dosage = 0;
  double amount = 0;
  Medicine({
    required this.dosage,
    required this.amount,
  }) : super(name: 'defualt medcine name');
  DateTime remaining = DateTime.now();

  Medicine copyWith({
    double? dosage,
    double? amount,
  }) {
    return Medicine(
      dosage: dosage ?? this.dosage,
      amount: amount ?? this.amount,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'dosage': dosage});
    result.addAll({'amount': amount});

    return result;
  }

  factory Medicine.fromMap(Map<String, dynamic> map) {
    return Medicine(
      dosage: map['dosage']?.toDouble() ?? 0.0,
      amount: map['amount']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Medicine.fromJson(String source) =>
      Medicine.fromMap(json.decode(source));

  @override
  String toString() => 'Medicine(dosage: $dosage, amount: $amount)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Medicine &&
        other.dosage == dosage &&
        other.amount == amount;
  }

  @override
  int get hashCode => dosage.hashCode ^ amount.hashCode;
}
