import 'dart:convert';

class Breed {
  String breedName = 'default breed name';
  String wikiParagraph = 'default paragraph';
  String wikiLink = 'default link';
  Breed({
    required this.breedName,
    required this.wikiParagraph,
    required this.wikiLink,
  });

  Breed copyWith({
    String? breedName,
    String? wikiParagraph,
    String? wikiLink,
  }) {
    return Breed(
      breedName: breedName ?? this.breedName,
      wikiParagraph: wikiParagraph ?? this.wikiParagraph,
      wikiLink: wikiLink ?? this.wikiLink,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'breedName': breedName});
    result.addAll({'wikiParagraph': wikiParagraph});
    result.addAll({'wikiLink': wikiLink});

    return result;
  }

  factory Breed.fromMap(Map<String, dynamic> map) {
    return Breed(
      breedName: map['breedName'] ?? '',
      wikiParagraph: map['wikiParagraph'] ?? '',
      wikiLink: map['wikiLink'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Breed.fromJson(String source) => Breed.fromMap(json.decode(source));

  @override
  String toString() =>
      'Breed(breedName: $breedName, wikiParagraph: $wikiParagraph, wikiLink: $wikiLink)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Breed &&
        other.breedName == breedName &&
        other.wikiParagraph == wikiParagraph &&
        other.wikiLink == wikiLink;
  }

  @override
  int get hashCode =>
      breedName.hashCode ^ wikiParagraph.hashCode ^ wikiLink.hashCode;
}
