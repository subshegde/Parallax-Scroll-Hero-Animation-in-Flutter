import 'package:flutter/material.dart';
import 'package:flutter_animations/pages/parallax_scroll_effect-02/pages/parallax/parallax_scroll_effect_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animations',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ParallaxScrollEffectList(),
    );
  }
}
