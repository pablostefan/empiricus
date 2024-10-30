class IdentifierEntity {
  final String slug;

  IdentifierEntity({required this.slug});

  IdentifierEntity.empty() : slug = '';

  factory IdentifierEntity.fromJson(Map<String, dynamic> json) {
    return IdentifierEntity(slug: json['slug']);
  }

  Map<String, dynamic> toJson() {
    return {'slug': slug};
  }
}
