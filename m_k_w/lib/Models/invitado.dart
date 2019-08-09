import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String userID;
  final String nombre;
  final String email;
  final String profilePictureURL;
  final String tipo;
  final int boletos;
  bool confirmado;
  bool notificame;

  User({this.userID, this.nombre, this.email, this.profilePictureURL, this.tipo, this.boletos, this.confirmado, this.notificame});

  Map<String, Object> toJson() {
    return {
      'userID': userID,
      'nombre': nombre,
      'email': email == null ? '' : email,
      'profilePictureURL': profilePictureURL,
      'apIdentifier': 'BodaMelyKato',
      'tipo': tipo,
      'boletos':boletos,
      'confirmado':confirmado,
      'notificame':notificame
    };
  }

  factory User.fromJson(Map<String, Object> doc) {
    User user = new User(
        userID: doc['userID'],
        nombre: doc['nombre'],
        email: doc['email'],
        profilePictureURL: doc['profilePictureURL'],
        tipo:doc['tipo'],
        boletos: doc['boletos'],
        confirmado: doc['confirmado'],
        notificame: doc['notificame']
    );
    return user;
  }

  factory User.fromDocument(DocumentSnapshot doc) {
    return User.fromJson(doc.data);
  }
}
