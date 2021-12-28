import 'enums.dart';

/// {@template oura.user}
/// If the user has granted an access to personal info, you can fetch it with
/// the following call. The response contains data in metric units (kg, cm).
/// {@endtemplate}
///
/// See also:
///  * [Oura.user]
class User {
  User({
    required this.age,
    required this.weight,
    required this.gender,
    required this.email,
  });

  final int age;
  final double weight;
  final Gender gender;
  final String email;

  User copyWith({
    int? age,
    double? weight,
    Gender? gender,
    String? email,
  }) {
    return User(
      age: age ?? this.age,
      weight: weight ?? this.weight,
      gender: gender ?? this.gender,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'age': age,
      'weight': weight,
      'gender': gender,
      'email': email,
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      age: json['age'] ?? 0,
      weight: json['weight'] ?? 0.0,
      gender: Gender.values.byName(json['gender']),
      email: json['email'] ?? '',
    );
  }

  @override
  String toString() {
    return 'User(age: $age, weight: $weight, gender: $gender, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is User &&
        age == other.age &&
        weight == other.weight &&
        gender == other.gender &&
        email == other.email;
  }

  @override
  int get hashCode => Object.hash(age, weight, gender, email);
}
