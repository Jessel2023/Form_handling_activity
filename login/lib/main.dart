import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget{
 
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      home: FirstPage()
    );
  }
}

class FirstPage extends StatelessWidget{
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
 
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.tealAccent,
          title: Text('Login'),
          leading: Icon (Icons.code),
          centerTitle: true,
       ),
      body: Form(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextFormField(
              controller: email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email Address",
              ),
            ),
             TextFormField(
              controller: password,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Password",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("Email : ${email.text}");
                print("Password : ${password.text}");
              },
              child: Text("Submit"),
            )
          ]
        ),
      ),
    );
  }
}

