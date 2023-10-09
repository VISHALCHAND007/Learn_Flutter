import 'package:flutter/material.dart';

void main(){
  runApp(FlutterApp());
}
class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: MainScreen(),
    );
  }
}
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Screen", style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        color: Colors.grey.shade200,
      ),
    );
  }

}

