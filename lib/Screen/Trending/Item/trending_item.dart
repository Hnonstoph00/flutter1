import 'package:flutter/material.dart';

class TrendingItemWidget extends StatelessWidget {
  final String text;
  const TrendingItemWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Column(
          children: [Text(text), const Text("Hello world")],
        ),
      ),
    );
  }
}
