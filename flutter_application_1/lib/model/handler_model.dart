// handler_model.dart

// Model untuk login
class LoginInput {
  final String username;
  final String password;
  final String role;

  LoginInput({
    required this.username,
    required this.password,
    required this.role,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
        "role": role,
      };
}

// Model untuk response login
class LoginResponse {
  final String message;
  final String status;  // pastikan status diterima sebagai String

  LoginResponse({
    required this.message,
    required this.status,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        message: json["message"],
        status: json["status"],  // pastikan status diterima sebagai String
      );
}

// Model untuk register
class RegisterInput {
  final String username;
  final String password;
  final String role;

  RegisterInput({
    required this.username,
    required this.password,
    required this.role,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
        "role": role,
      };
}

// Model untuk response register
class RegisterResponse {
  final String message;

  RegisterResponse({
    required this.message,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) => RegisterResponse(
        message: json["message"],
      );
}
