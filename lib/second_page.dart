import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    Widget bubble = Container(
      width: 200,
      height: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.blue
      ),
      child: Text(
        'Game Bubble',
        style: TextStyle(color: Colors.amber)
      )
    );

    Widget dragBox = Container(
      width: 1000,
      height: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.purple
      ),
      child: Text(
        'Word Bubble, where words will be clicked and dragged',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.amber)
      )
    );
    return Scaffold(
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            bubble,
            SizedBox(height: 20),
            // Align(alignment: Alignment.bottomCenter,
            //       child: dragBox
            // ),
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: dragBox
            )
          ],
        )));
  }
}
