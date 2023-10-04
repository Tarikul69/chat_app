import 'package:flutter/material.dart';
import 'package:get/get.dart';

class chat extends StatelessWidget {
  const chat({super.key});

  Widget mycard(){
    return  Container(
        child: InkWell(
          onTap: (){
            Get.to("page");
          },
          child: Card(
            //color: Colors.grey,
            child: Row(
              children: [
                const SizedBox(height: 10,),
                Container(
              child: CircleAvatar(
                backgroundImage: AssetImage('jrhughiuherg/ijirjf/iji'),
              ),
            ),
            SizedBox(width: 200,),
            Row(
              children: [
            Text("data"),
              ],
            ) 
              ],
            ),
          ),
        ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            mycard(),
            mycard(),
            mycard(),
            mycard(),
            mycard(),
            mycard(),
            mycard(),
            mycard(),
            mycard(),
            mycard(),
            mycard(),
            mycard(),          
            mycard(),
            mycard(),
            mycard(),
            mycard(),          
            mycard(),
            mycard(),
            mycard(),
            mycard(),
          ],
        ),
      ),
    );
  }
}