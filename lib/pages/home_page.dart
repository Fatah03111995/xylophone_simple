import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Xylophone',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.amber[600],
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.5))),
    );
  }
}
