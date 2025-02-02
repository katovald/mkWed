import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

// YA NO SE USA :U
class CameraW extends StatefulWidget {
  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<CameraW> {
  File imageFile;
  bool isLoading;
  String imageUrl;
  Future uploadFile() async {
    String fileName = DateTime.now().millisecondsSinceEpoch.toString();
    StorageReference reference = FirebaseStorage.instance.ref().child(fileName);
    StorageUploadTask uploadTask = reference.putFile(imageFile);
    StorageTaskSnapshot storageTaskSnapshot = await uploadTask.onComplete;
    storageTaskSnapshot.ref.getDownloadURL().then((downloadUrl) {
      imageUrl = downloadUrl;
      setState(() {
        isLoading = false;
        //onSendMessage(imageUrl, 1);
      });
    }, onError: (err) {
      setState(() {
        isLoading = false;
      });
      //Fluttertoast.showToast(msg: 'Este archivo no es una imagen');
    });
  }
  Future getImage() async {
    File picture = await ImagePicker.pickImage(
        source: ImageSource.camera, maxWidth: 500.0, maxHeight: 300.0,);
    setState(() {
      imageFile = picture;
    });

    if (imageFile != null) {
      setState(() {
        isLoading = true;
      });
      uploadFile();
    }
  }



  @override
  Widget build(BuildContext context) {
    return
      Column(
      children: <Widget>[
        Container(
          child: imageFile == null
              ?Text('')
              :Image.file((imageFile)),
        ),
        SizedBox(height: 10),
        Container(
          width: 90,
          height: 40,
          margin: EdgeInsets.only(bottom: 14),
          child: ButtonTheme(
            child:
            FlatButton(
              onPressed: getImage,
              color: Color(0xFFFFD100),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.camera,
                    color: Colors.white,
                  ),
                  Text(
                    "Foto",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );

  }
}
