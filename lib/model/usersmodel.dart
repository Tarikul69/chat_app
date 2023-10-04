import 'package:flutter/material.dart';
import 'package:get/get.dart';

class message extends StatefulWidget {
  const message({super.key});

  @override
  State<message> createState() => _messageState();
}

class _messageState extends State<message> {
  var abc = 0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Container(
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            abc = abc+1;
           },
        ),
      ),
    );
  }
}