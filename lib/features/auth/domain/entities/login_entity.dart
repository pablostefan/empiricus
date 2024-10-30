class LoginEntity {
  final bool success;
  final String message;

  const LoginEntity({
    required this.success,
    required this.message,
  });

  factory LoginEntity.fromJson(Map<String, dynamic> json) {
    return LoginEntity(
      success: json['success'],
      message: json['message'],
    );
  }
}
