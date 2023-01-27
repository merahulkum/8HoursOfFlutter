import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int time = 8;
    var name = "Rahul";
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: Container(
          child: Text("This is $time hrs Fluuter Course completed By $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
