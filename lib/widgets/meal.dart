import 'package:flutter/material.dart';

class MealWidget extends StatefulWidget {
  const MealWidget({super.key});

  @override
  _MealWidgetState createState() => _MealWidgetState();
}

class _MealWidgetState extends State<MealWidget> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      // Container for each meal with rounded edges and a black border
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.black),
      ),
      margin: const EdgeInsets.symmetric(vertical: 4.0), // Margin between meals
      child: TextField(
        controller: _textController,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(8.0),
        ),
      ),
    );
  }
}