import 'package:flutter/material.dart';

class Hours extends StatelessWidget {
  const Hours({Key? key, required this.hours}) : super(key: key);
  final int hours;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Center(
        child: Text(
          hours.toString(),
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
