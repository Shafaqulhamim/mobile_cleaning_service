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
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: SizedBox(
            child: Text(
                'Please Email "cleaningservicesp2@gmail.com" for any concern',
                style: TextStyle(fontSize: 18)),
          ),
        ),
      ),
    );
  }
}
