import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  const Tile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Center(
        child: Text("Hello"),
      ),
    );
  }
}
