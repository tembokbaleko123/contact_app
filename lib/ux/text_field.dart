import 'package:flutter/material.dart';

class KotakText extends StatelessWidget {
  const KotakText(
      {super.key,
      required this.controller,
      required this.kotakKata,
      this.kataKata});

  final String? kataKata;
  final TextEditingController controller;
  final ValueChanged kotakKata;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
          controller: controller,
          decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: () {
                  controller.clear();
                },
                icon: Icon(Icons.delete)),
            hintText: kataKata,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          ),
          onChanged: kotakKata),
    );
  }
}
