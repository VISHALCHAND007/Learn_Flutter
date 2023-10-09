import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Main Screen",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.grey.shade300,
        child: Center(
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.blue.shade400,
                // shape: BoxShape.circle
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 21, spreadRadius: 21)
                ]),
          ),
        ),
      ),
    );
  }
}
