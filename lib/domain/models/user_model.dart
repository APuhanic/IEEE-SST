abstract class BaseUserModel {
  BaseUserModel(
    this.email, {
    required this.id,
  });
  final String id;
  final String? email;

  BaseUserModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String,
        email = json['email'] as String?;
}
