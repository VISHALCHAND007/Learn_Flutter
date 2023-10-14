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
    var title = [
      'Nikhil',
      'Dheeraj',
      'Vimal',
      'Yogesh',
      'Sonu',
      'Hrithik',
      'Roy',
      'Nm',
      '404',
      'WampireAsh',
      'Mr. Unknown',
      'Harsh',
      'StarLord'
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Main Screen",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/my.jpg'),
                  backgroundColor: Colors.blue,
                  radius: 30,
                ),
                title: Text(title[index]),
                subtitle: Text("+91 869404398"),
                trailing: const Icon(Icons.accessibility_new_rounded),
              );
            },
            separatorBuilder: (context, ind) {
              return Divider(
                height: 2,
                color: Colors.grey.shade400,
              );
            },
            itemCount: title.length));
  }
}
