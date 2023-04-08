import 'package:flutter/material.dart';

class AmPm extends StatelessWidget {
  const AmPm({Key? key, this.isItAm = true}) : super(key: key);
  final bool isItAm;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Center(
        child: Text(
          isItAm ? "am" : "pm",
          style: const TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
