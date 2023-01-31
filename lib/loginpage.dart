import 'package:c4/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              Text(
                "Hi this is Login Page",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter UserName",
                        labelText: "UserName",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter PassWord", labelText: "PassWord"),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },style: TextButton.styleFrom(minimumSize: Size(150, 40)), child: Text("Login"))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
