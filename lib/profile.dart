import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;
    String message = args == null ? 'No data' : args as String;
    return Scaffold(
      appBar: AppBar(title: Text('MyProfile')),
      body: Center(child: Text(message, style: TextStyle(fontSize: 24))),
    );
  }
}