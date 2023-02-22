import 'package:c4/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

String name = "";
bool ischange = false;

class _LoginPageState extends State<LoginPage> {
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
                "Hi this is Login Page $name",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter UserName",
                        labelText: "UserName",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(
                          () {},
                        );
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter PassWord", labelText: "PassWord"),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),

                    InkWell(
                      onTap: () {
                        // Navigator.pushNamed(context, MyRoutes.homeRoute);
                        setState(() {
                          ischange = true;
                        });
                         Future.delayed(Duration(seconds: 1),(){
                             Navigator.pushNamed(context, MyRoutes.homeRoute);
                         });
                      
                      },
                      child: AnimatedContainer(
                        width: ischange ? 50 : 150,
                        height: 40,
                        alignment: Alignment.center,
                        child: ischange
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius:
                              BorderRadius.circular(ischange ? 50 : 4),
                        ),
                        duration: Duration(seconds: 1),
                      ),
                    )

                    // ElevatedButton(
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //     },
                    //     style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    //     child: Text("Login"))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
