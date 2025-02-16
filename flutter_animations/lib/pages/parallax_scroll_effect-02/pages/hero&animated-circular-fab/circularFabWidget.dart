import 'dart:math';
import 'package:flutter/material.dart';

class CircularFabWidget extends StatefulWidget {
  const CircularFabWidget({super.key});

  @override
  State<CircularFabWidget> createState() => _CircularFabWidgetState();
}

class _CircularFabWidgetState extends State<CircularFabWidget> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  final double buttonSize = 80.0;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flow(
        delegate: FlowMenuDelegate(buttonSize: buttonSize, controller: controller),
        children: <IconData>[
          Icons.mail,
          Icons.call,
          Icons.notifications,
          Icons.sms,
          Icons.menu,
        ].map<Widget>(buildFAB).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Animate the controller to simulate an open/close animation
          if (controller.isCompleted) {
            controller.reverse();
          } else {
            controller.forward();
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget buildFAB(IconData icon) {
    return SizedBox(
      width: buttonSize,
      height: buttonSize,
      child: FloatingActionButton(
        elevation: 0,
        splashColor: Colors.black,
        child: Icon(icon, color: Colors.white, size: 45),
        onPressed: () {},
      ),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  final double buttonSize;
  final AnimationController controller;

  FlowMenuDelegate({required this.buttonSize, required this.controller});

  @override
  void paintChildren(FlowPaintingContext context) {
    final double radius = 180 * controller.value; // Adjust radius based on animation controller value
    final double angleDelta = pi * 0.5; // Half circle (180 degrees)

    for (int sn = 0; sn < context.childCount; sn++) {
      final isLastItem = sn == context.childCount - 1;
      final setValue = (value) => isLastItem ? 0.0 : value;

      // Calculate position for each FAB in the circular flow
      final theta = angleDelta * sn / (context.childCount - 1); // Evenly distribute over a half circle
      final x = setValue(radius * cos(theta));
      final y = setValue(radius * sin(theta));

      context.paintChild(
        sn,
        transform: Matrix4.identity()
          ..translate(x, y, 0)
          ..translate(buttonSize / 2, buttonSize / 2) // Translate to center of the FAB
          ..rotateZ(180 * (1 - controller.value) * pi / 180) // Rotate based on controller value
          ..translate(-buttonSize / 2, -buttonSize / 2), // Translate back to original position
      );
    }
  }

  @override
  bool shouldRepaint(covariant FlowMenuDelegate oldDelegate) => controller != oldDelegate.controller;
}
