import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsSound(int n ) {

    final player = AudioCache();
    player.play('note$n.wav');

  }
  Expanded buildKey ({int n,Color color}){

    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){

          playsSound(n);
        },

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
           crossAxisAlignment:CrossAxisAlignment.stretch,

            children: <Widget>[
              buildKey(n:1,color:Colors.red),
              buildKey(n:2,color:Colors.orange),
              buildKey(n:3,color:Colors.yellow),
              buildKey(n:3,color:Colors.green),
              buildKey(n:4,color:Colors.pink),
              buildKey(n:5,color:Colors.blue),
              buildKey(n:6,color:Colors.purple),
              buildKey(n:7,color:Colors.indigo),

            ],
          ),

        ),
      ),
    );
  }
}
