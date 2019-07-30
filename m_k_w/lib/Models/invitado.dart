import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String userID;
  final String nombre;
  final String email;
  final String profilePictureURL;

  User({this.userID, this.nombre, this.email, this.profilePictureURL});

  Map<String, Object> toJson() {
    return {
      'userID': userID,
      'nombre': nombre,
      'email': email == null ? '' : email,
      'profilePictureURL': profilePictureURL,
      'apIdentifier': 'BodaMelyKato'
    };
  }

  factory User.fromJson(Map<String, Object> doc) {
    User user = new User(
        userID: doc['userID'],
        nombre: doc['nombre'],
        email: doc['email'],
        profilePictureURL: doc['profilePictureURL']);
    return user;
  }

  factory User.fromDocument(DocumentSnapshot doc) {
    return User.fromJson(doc.data);
  }
}
