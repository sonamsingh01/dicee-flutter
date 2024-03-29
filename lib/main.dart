import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage  extends StatefulWidget {

  @override
  _DicePageState createState() => _DicePageState();
}


class _DicePageState extends State<DicePage>{
  int leftDiceNumber=1;
  int rightDiceNumber=1;
  @override
  Widget build(BuildContext context){
  return Center(
    child: Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDiceNumber= Random().nextInt(6)+1;

                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: FlatButton(
              onPressed: (){
    setState(() {
    rightDiceNumber= Random().nextInt(6)+1;

    });
    },
              child: Image(
                image: AssetImage('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
}



