class Registration {
  String firstName;
  String lastName;
  String email;
  String phone;
  String password;
  String gender;
  int age;

  Registration({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.password,
    required this.gender,
    required this.age,
  });
}

class RegistrationResponse {
  bool success;
  String message;

  RegistrationResponse({required this.success, required this.message});
}
