import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<String> wordBubbles = [
    "Polyps",
    "Skeleton",
    "Reef Flat",
    "Reef Crest",
    "Buttress Zone",
    "Seaward Slope",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              width: 950,
              height: 500,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage('../images/reef_pic.jpg'), // You'll replace this with the correct path
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: wordBubbles.map((word) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Draggable<String>(
                      data: word,
                      feedback: Material(
                        child: Text(
                          word,
                          style: TextStyle(color: Colors.amber, fontSize: 24),
                        ),
                        elevation: 4.0,
                      ),
                      childWhenDragging: Container(),
                      onDragEnd: (dragDetails) {
                        // This can be left empty since the bubbles are not meant to be repositioned
                      },
                      child: Container(
                        width: 200,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.purple),
                        child: Text(
                          word,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.amber),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
