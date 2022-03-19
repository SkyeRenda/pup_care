abstract class Medical {
  String name = 'default medicine name';
  Medical({
    required this.name,
  });
  DateTime frequency = DateTime.now();

  @override
  String toString() => 'Medical(name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Medical && other.name == name;
  }

  @override
  int get hashCode => name.hashCode;
}
