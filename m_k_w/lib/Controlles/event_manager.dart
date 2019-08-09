import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';

enum eventProblems {EventNotRegister, EventFull, NetworkError, UnkonwnError}

class Events {

  static Future<bool> checkEvent(String code) async {
    print(code);
    bool exists = false;
    try {
      await Firestore.instance.collection("eventos").where("codigo", isEqualTo: code).getDocuments().then((doc) {
        if (doc.documents.isNotEmpty)
          exists = true;
        else
          exists = false;
      });
      return exists;
    } catch (e) {
      return false;
    }
  }

  static Future<bool> checkInvitation(String userID) async {
    bool invitado = false;
    try {
      await Firestore.instance.document("users/$userID").get().then((doc) {
        if (doc.exists){
          invitado = true;
        }else{
          invitado = false;
        }
      });
      return invitado;
    }catch(e){
      return false;
    }
  }

  static Future<void> subscribe({String eventCode, String userID}) async {
    var map = {"evento":eventCode};
    checkEvent(eventCode).then((exist) {
      if(exist){
        Firestore.instance.document("users/$userID").updateData(map);
      }
    });
  }

  static void confirmInvite({String uid, bool response}) async {
      var map = {"confirmado":response};
      Firestore.instance.document("users/$uid").updateData(map);
  }

  static void notificame({String uid, bool response}) async {
    var map = {"notificame":response};
    Firestore.instance.document("users/$uid").updateData(map);
  }

  static Future<bool> checkUserExist(String userID) async {
    bool exists = false;
    try {
      await Firestore.instance.document("users/$userID").get().then((doc) {
        if (doc.exists)
          exists = true;
        else
          exists = false;
      });
      return exists;
    } catch (e) {
      return false;
    }
  }
}