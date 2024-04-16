import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> colorButton = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.teal,
      Colors.blue,
      Colors.purple
    ];
    List<Widget> button() {
      List<Widget> buttons = [];

      for (int i = 0; i < colorButton.length; i++) {
        buttons.add(Expanded(
          child: TextButton(
            onPressed: () async {
              final audioPlayer = AudioPlayer();
              await audioPlayer.play(AssetSource('sound/note${i + 1}.wav'));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(colorButton[i]),
              shape: const MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
            child: const Text(''),
          ),
        ));
      }
      return buttons;
    }

    return Scaffold(
      backgroundColor: Colors.lightGreen[400],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightGreen[700],
        title: Text(
          'Xylophone',
          style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.amber[200],
              fontWeight: FontWeight.w800,
              letterSpacing: 2),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: button(),
        ),
      ),
    );
  }
}
