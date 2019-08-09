import 'package:cloud_firestore/cloud_firestore.dart';

class EventoRegistrado {
  final String id;
  final String nombre;
  final int lugares;

  EventoRegistrado({this.id, this.nombre, this.lugares});

  Map<String, Object> toJson() {
    return {
      'id': id,
      'nombre': nombre,
      'lugares': lugares
    };
  }

  factory EventoRegistrado.fromJson(Map<String, Object> doc) {
    EventoRegistrado evento = new EventoRegistrado(
        id: doc['id'],
        nombre: doc['nombre'],
        lugares: doc['lugares']);
    return evento;
  }

  factory EventoRegistrado.fromDocument(DocumentSnapshot doc) {
    return EventoRegistrado.fromJson(doc.data);
  }
}