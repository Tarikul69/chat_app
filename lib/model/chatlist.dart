// import 'package:flutter/material.dart';

// class chatlist extends StatelessWidget {
//   const chatlist({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       child:ListView.builder(
//   itemCount: messages.length,
//   shrinkWrap: true,
//   padding: EdgeInsets.only(top: 10,bottom: 10),
//   physics: NeverScrollableScrollPhysics(),
//   itemBuilder: (context, index){
//     return Container(
//       padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
//       child: Align(
//         alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             color: (messages[index].messageType  == "receiver"?Colors.grey.shade200:Colors.blue[200]),
//           ),
//           padding: EdgeInsets.all(16),
//           child: Text(messages[index].messageContent, style: TextStyle(fontSize: 15),),
//         ),
//       ),
//     );
//   },
// ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class chatlist extends StatelessWidget {
  const chatlist({super.key});
  // FirebaseFirestore firestore = FirebaseFirestore.instance;
  //   Future<void> abcd()
  // {
  //   return firestore.collection("test").get();
  // }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;


    return Scaffold(
      
      body: Container(
        child: Column(
          children: [
            //snapshot.data!.docs[i]['send']=='10'?mycard(a: snapshot.data!.docs[i]['text'], col: 0xFFB74093,c1: Alignment.bottomLeft, ):mycard(a: snapshot.data!.docs[i]['text'], col: 0xFFB74000, c1: Alignment.bottomRight,)
          ],
        ),
      )
    );
  }




  Widget mycard({required String a, required col,required c1}){
  return Card(
    child: Container(
      
      height: 25,
      alignment: c1,
        child: Card(
        color: Color(col),
        child: Text(a,),
      ),
    ),
  );
 }
}