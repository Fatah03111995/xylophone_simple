import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> colorButton = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.blue,
      Colors.purple
    ];
    List<Widget> button() {
      List<Widget> buttons = [];
      for (int i = 0; i < colorButton.length; i++) {
        buttons.add(TextButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(colorButton[i]),
          ),
          child: const Text(''),
        ));
      }
      return buttons;
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightGreen[200],
        title: Text(
          'Xylophone',
          style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.amber[600],
              fontWeight: FontWeight.w500,
              letterSpacing: 1.5),
        ),
      ),
      body: Row(children: button()),
    );
  }
}
