import 'package:flutter/material.dart';
import 'package:flutter_animations/pages/parallax_scroll_effect-02/model/locationModel.dart';

class HeroDemo extends StatefulWidget {
  final Location location;
  const HeroDemo({super.key,required this.location});

  @override
  State<HeroDemo> createState() => _HeroDemoState();
}

class _HeroDemoState extends State<HeroDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: widget.location.name,
              child: Image.network(widget.location.imageUrl,)),

            // CircularFabWidget()
          ],
        )
        ),
    );
  }
}