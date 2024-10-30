class FeatureEntity {
  final String title;
  final String description;

  FeatureEntity({
    required this.title,
    required this.description,
  });

  factory FeatureEntity.fromJson(Map<String, dynamic> json) {
    return FeatureEntity(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
    );
  }
}
