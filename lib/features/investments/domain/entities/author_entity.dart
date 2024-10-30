class AuthorEntity {
  final String name;
  final String photoSmallUrl;
  final String photoLargeUrl;
  final String description;

  AuthorEntity({
    required this.name,
    required this.photoSmallUrl,
    required this.photoLargeUrl,
    required this.description,
  });

  factory AuthorEntity.fromJson(Map<String, dynamic> json) {
    return AuthorEntity(
      name: json['name'] ?? '',
      photoSmallUrl: json['photoSmallUrl'] ?? '',
      photoLargeUrl: json['photoLargeUrl'] ?? '',
      description: json['description'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'photoSmallUrl': photoSmallUrl,
      'photoLargeUrl': photoLargeUrl,
      'description': description,
    };
  }
}
