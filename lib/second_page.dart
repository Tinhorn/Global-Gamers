import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String _draggableWord = 'Drag Me!';
  bool _wordDropped = false;
  Offset _dragOffset = Offset(0, 0); // To track the position of the draggable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack( // Use Stack to overlay widgets
        children: [
          Center(
            child: DragTarget<String>(
              onWillAccept: (data) => true,
              onAccept: (data) {
                setState(() {
                  _wordDropped = true;
                });
              },
              builder: (context, candidateData, rejectedData) => Container(
                width: 200,
                height: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  _wordDropped ? _draggableWord : 'Game Bubble',
                  style: TextStyle(color: Colors.amber),
                ),
              ),
            ),
          ),
          Positioned(
            left: _dragOffset.dx,
            top: _dragOffset.dy,
            child: Draggable<String>(
              data: _draggableWord,
              child: Container(
                width: 200,
                height: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.purple),
                child: Text(
                  'Word Bubble',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.amber),
                ),
              ),
              feedback: Material(
                child: Text(
                  _draggableWord,
                  style: TextStyle(color: Colors.amber, fontSize: 24),
                ),
                elevation: 4.0,
              ),
              childWhenDragging: Container(), // Empty container when dragging
              onDragEnd: (dragDetails) {
                setState(() {
                  _dragOffset = dragDetails.offset;
                  _wordDropped = false; // Reset this if you want the word to be draggable again after dropping
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
