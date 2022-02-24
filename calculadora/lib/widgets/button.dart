import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  final buttonTapped;

  MyButton(
      {this.color, this.textColor, this.buttonText = '', this.buttonTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Container(
            alignment: Alignment.center,
            color: color,
            child: Text(
              buttonText,
              style: TextStyle(
                color: textColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
