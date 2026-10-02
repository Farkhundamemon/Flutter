import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}
class myApp  extends StatelessWidget {
  const myApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('My App'),
        ),
        body: 
       ListView(
        children: [
          Container(
            width: double.infinity,
            //height: 100,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                CircleAvatar(

                )
              ]
            )
          )
        ],
       )
      ),
    );
  }
}

