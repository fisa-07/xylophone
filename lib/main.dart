import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Text(
              'Xylophone',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.grey,
            elevation: 10.0,
            shadowColor: Colors.black,
          ),
          body: XylophonePage(),
        ),
      ),
    );

class XylophonePage extends StatelessWidget {
  const XylophonePage({super.key});

  void playSound(int i) {
    final player = AudioPlayer();
    player.play(AssetSource('note$i.wav'));
  }

  Widget buildButton({required int buttonNo, required Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(buttonNo);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildButton(buttonNo: 1, color: Colors.red),
        buildButton(buttonNo: 2, color: Colors.orange),
        buildButton(buttonNo: 3, color: Colors.yellow),
        buildButton(buttonNo: 4, color: Colors.green),
        buildButton(buttonNo: 5, color: Colors.teal),
        buildButton(buttonNo: 6, color: Colors.blue),
        buildButton(buttonNo: 7, color: Colors.brown),
      ],
    );
  }
}
