import 'package:flutter/material.dart';

class settings extends StatefulWidget {
  @override
  _settingsstate createState() => _settingsstate();
}

class _settingsstate extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff32cb95),
        title: const Text('Settings'),
      ),
      body: const Center(
        child: SizedBox(
          child: Text('App Version 1.0', style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
