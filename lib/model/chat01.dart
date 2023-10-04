import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';


class chat01 extends StatelessWidget {

//Camera-File
Widget abcde()
{ 
  return ExpansionTile(title: Text(""),
              children: [
                InkWell(child: Text("Camera"),
                onTap: () => imgcam(),
                ),
                const SizedBox(height: 15,),
                InkWell(child: Text("Galary"),
                onTap: () => imgfile(),
                ),
                const SizedBox(height: 15,),
              ],
            );
}
//Messageing Mechanisom
Future send() async{
  
}


//Image Picking Mechanisom
 File? image;

  Future imgcam() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) {
      return;
    }
    final imageTemporary = File(image.path);
    this.image = imageTemporary;
      
    } on PlatformException catch (e) {
      print("Failed to pic image: $e");
    }
     
  }

  Future imgfile() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    }
    final imageTemporary = File(image.path);
    this.image = imageTemporary;
      
    } on PlatformException catch (e) {
      print("Failed to pic image: $e");
    }
     
  }

  // File imageFile = new File(widget.fileData.uri.toString());
  // List<int> a1 = new File();
  //  String img64 = base64Encode(a1.toString());

  // const chat01({super.key});

  //  FirebaseFirestore firestore = FirebaseFirestore.instance;
  //   Future<void> abcd()
  // {
  //   return firestore.collection("test").get();
  // };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back,color: Colors.black,),
                ),
                SizedBox(width: 2,),
                CircleAvatar(
                  backgroundImage: NetworkImage("jndjkfnkjnhjnfdj"),
                  maxRadius: 20,
                ),
                SizedBox(width: 12,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Abir",style: TextStyle( fontSize: 16 ,fontWeight: FontWeight.w600),),
                      SizedBox(height: 6,),
                      Text("Online",style: TextStyle(color: Colors.grey.shade600, fontSize: 13),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body:  Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      
                      child: FloatingActionButton(
                        onPressed: (){
                          imgfile();
                        },
                        child: Icon(
                          Icons.add, 
                          color: Colors.white, 
                          size: 20, )
                          ),
                    )
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Write message...",
                        hintStyle: TextStyle(color: Colors.black54),
                        border: InputBorder.none
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  FloatingActionButton(
                    onPressed: () => send(),
                    child: Icon(Icons.send,color: Colors.white,size: 18,),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
                ],
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}

 
