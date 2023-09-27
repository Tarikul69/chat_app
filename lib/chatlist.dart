import 'package:flutter/material.dart';

class charlist extends StatelessWidget {
  const charlist({super.key});

  Widget mycard(){
    return  Container(
        child: Card(
          color: Colors.grey,
          child: Row(
            children: [
              const SizedBox(height: 10,),
              Container(
            child: CircleAvatar(
              backgroundImage: AssetImage('jrhughiuherg/ijirjf/iji'),
            ),
          ),
          Row(
            children: [
          Text("data"),
            ],
          ),
          Row(
            children: [
          Text("data"),
            ],
          ),
            ],
          ),
        ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          mycard(),
          mycard(),
          mycard(),
          mycard(),
        ],
      ),
    );
  }
}