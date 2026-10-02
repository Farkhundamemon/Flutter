import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  final usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Column(
        children: [
          Text("Login Screen",),
          SizedBox(
            height: 36,
          ),
          Container(
            height: 150,
            width: 120,
            color: Colors.green,
          ),
          TextField(
            decoration: InputDecoration(
              hint: Text("john"),
              label: Text("Enter your Name"),
              prefix: Icon(
                Icons.person,
              ),
            ),
          ),
          SizedBox(
            height: 34,
          ),
        ],
      )),
    );
  }
}