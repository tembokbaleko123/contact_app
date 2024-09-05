import 'package:flutter/material.dart';
import 'package:kontak/ui/screen1.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Kontak(),
    );
  }
}
