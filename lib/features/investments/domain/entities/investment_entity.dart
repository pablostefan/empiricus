import 'package:empiricus/features/investments/domain/entities/author_entity.dart';
import 'package:empiricus/features/investments/domain/entities/feature_entity.dart';
import 'package:empiricus/features/investments/domain/entities/identifier_entity.dart';

class InvestmentEntity {
  final IdentifierEntity identifier;
  final String name;
  final String shortDescription;
  final String description;
  final String imageLarge;
  final String imageSmall;
  final List<AuthorEntity> authors;
  final List<FeatureEntity> features;

  InvestmentEntity({
    required this.identifier,
    required this.name,
    required this.shortDescription,
    required this.description,
    required this.imageLarge,
    required this.imageSmall,
    required this.authors,
    required this.features,
  });

  InvestmentEntity.empty()
      : identifier = IdentifierEntity.empty(),
        name = 'Nome',
        shortDescription = 'Descrição curta',
        description = 'Descrição',
        imageLarge = '',
        imageSmall = '',
        authors = [],
        features = [];

  factory InvestmentEntity.fromJson(Map<String, dynamic> json) {
    return InvestmentEntity(
      identifier: IdentifierEntity.fromJson(json['identifier']),
      name: json['name'] ?? '',
      shortDescription: json['shortDescription'] ?? '',
      description: json['description'] ?? '',
      imageLarge: json['imageLarge'] ?? '',
      imageSmall: json['imageSmall'] ?? '',
      authors: (json['authors'] as List?)?.map((a) => AuthorEntity.fromJson(a)).toList() ?? [],
      features: (json['features'] as List?)?.map((f) => FeatureEntity.fromJson(f)).toList() ?? [],
    );
  }
}
