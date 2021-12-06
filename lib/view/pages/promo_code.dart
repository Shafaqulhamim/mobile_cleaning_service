import 'package:flutter/material.dart';

class promo extends StatefulWidget {
  @override
  _promostate createState() => _promostate();
}

class _promostate extends State<promo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff32cb95),
        title: const Text('Promo'),
      ),
      body: const Center(
        child: SizedBox(
          child: Text('No promo code is avalable right now!',
              style: TextStyle(fontSize: 18, color: (Colors.grey))),
        ),
      ),
    );
  }
}
