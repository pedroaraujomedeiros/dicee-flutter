import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: new DicePage(),
      ),
    ),
  );
}

/*
class DicePage1 extends StatelessWidget {


}
*/

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 4;
  var rightDiceNumber = 1;

  void changeDiceFace(){
    setState(() {
      var rng = new Random();

      leftDiceNumber = rng.nextInt(6) + 1;
      rightDiceNumber = rng.nextInt(6) + 1;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: changeDiceFace,
                child: Image.asset('images/dice${leftDiceNumber}.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: changeDiceFace,
                child: Image.asset('images/dice${rightDiceNumber}.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
