import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key, required this.alignment});

  @override
  State<MyWidget> createState() => _MyWidgetState();

  final MainAxisAlignment alignment;
}

class _MyWidgetState extends State<MyWidget> {
  bool tapped = true; // Declaração da variável
  void _implicitAnimation() {
    setState(() {
      tapped = !tapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: widget.alignment, // Use a propriedade alignment
      children: [
        GestureDetector(
          onTap: _implicitAnimation,
          child: AnimatedCrossFade(
            firstChild: const Text(
              '✊',
              style: TextStyle(fontSize: 100),
            ),
            secondChild: const Text(
              '✋',
              style: TextStyle(fontSize: 100),
            ),
            crossFadeState:
                tapped ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 300),
          ),
        ),
      ],
    );
  }
}
