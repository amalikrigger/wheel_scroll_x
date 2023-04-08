import 'package:flutter/material.dart';

class Minutes extends StatelessWidget {
  const Minutes({Key? key, required this.mins}) : super(key: key);
  final int mins;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Center(
        child: Text(
          mins < 10 ? "0$mins" : mins.toString(),
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
