import 'package:flutter/material.dart';

class TextBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter a number to display the list item'),
      ),
    );
  }
}
