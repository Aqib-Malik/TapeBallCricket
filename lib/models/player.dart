import 'package:cloud_firestore/cloud_firestore.dart';

class PlayerModel {
  String name;
  int age;
  String phoneNumber;
  String playerType;
  String dominantHand;
  List<String> achievements;
  double rating;
  List<Map<String, dynamic>> reviews;

  PlayerModel({
    required this.name,
    required this.age,
    required this.phoneNumber,
    required this.playerType,
    required this.dominantHand,
    required this.achievements,
    required this.rating,
    required this.reviews,
  });

  // Convert PlayerModel to a Map for Firestore
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age,
      'phoneNumber': phoneNumber,
      'playerType': playerType,
      'dominantHand': dominantHand,
      'achievements': achievements,
      'rating': rating,
      'reviews': reviews,
    };
  }

  // Create a PlayerModel instance from a Firestore document
  static PlayerModel fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data()!;
    return PlayerModel(
      name: data['name'],
      age: data['age'],
      phoneNumber: data['phoneNumber'],
      playerType: data['playerType'],
      dominantHand: data['dominantHand'],
      achievements: List<String>.from(data['achievements']),
      rating: data['rating'],
      reviews: List<Map<String, dynamic>>.from(data['reviews']),
    );
  }
}
