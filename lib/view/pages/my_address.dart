import 'package:flutter/material.dart';

class myAddress extends StatefulWidget {
  @override
  _addressstate createState() => _addressstate();
}

class _addressstate extends State<myAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff32cb95),
        title: const Text('My address'),
      ),
    );
  }
}
