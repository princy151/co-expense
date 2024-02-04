import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'login/login_screen.dart'; // Import your LoginScreen widget


class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _retypepasswordController = TextEditingController();

  final database = FirebaseDatabase.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            TextFormField(
              controller: _retypepasswordController,
              decoration: InputDecoration(labelText: 'Re-type Password'),
              obscureText: true,
            ),
            ElevatedButton(onPressed: () async{
              var data = {
                "username": _usernameController.text,
                "email": _emailController.text,
                // "email": emailController.text,
                // "password": passwordController.text,

              };
              await database.ref().child("users").push().set(data).then((value) {
                print("Success");
              }).onError((error, stackTrace) {
                print(error.toString());
              });
            }, child: Text("Submit")),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginForm()),
                );
              },
                // Handle user registration here
              child: Text('Go to Login Page'),
            ),
          ],
        ),
      ),
    );
  }
}
