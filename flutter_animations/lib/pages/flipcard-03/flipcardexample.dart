import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';


class FlipCardExample extends StatefulWidget {
  const FlipCardExample({Key? key}) : super(key: key);

  @override
  _FlipCardExampleState createState() => _FlipCardExampleState();
}

class _FlipCardExampleState extends State<FlipCardExample> {
  
  final cong = GestureFlipCardController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FlipCards"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            GestureDetector(
              onTap: (){
                cong.flipcard();
              },
              child: GestureFlipCard(
                enableController: true,
                controller: cong,
                animationDuration: const Duration(milliseconds: 800),
                axis: FlipAxis.horizontal,
                frontWidget: Center(
                  child: Container(
                    width: 400,
                    height: 300,
                    child: Image.asset(
                      'assets/images/joker-front.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                backWidget: Container(
                  width: 400,
                  height: 300,
                  child: Image.asset(
                    'assets/images/joker-back.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}