import 'package:flutter/material.dart';

class help extends StatefulWidget {
  @override
  _helpstate createState() => _helpstate();
}

class _helpstate extends State<help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff32cb95),
        title: const Text('Help & Support'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset('assets/help.png'),
          ],
        ),
      ),
    );
  }
}
