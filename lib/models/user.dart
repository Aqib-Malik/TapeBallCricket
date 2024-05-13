class UserModel {
  String id;
  String name;
  String email;
  String profilePicture;
  String location;
  String role;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.profilePicture,
    required this.location,
    required this.role,
  });

  // Method to convert UserModel object to a map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'profilePicture': profilePicture,
      'location': location,
      'role': role,
    };
  }

  // Factory constructor to create UserModel object from map
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      profilePicture: map['profilePicture'],
      location: map['location'],
      role: map['role'],
    );
  }
}
