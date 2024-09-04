import 'package:flutter/material.dart';

class TrendingItemWidget extends StatelessWidget {
  final String text;
  const TrendingItemWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      color: Colors.red,
      child: Center(
        child: Column(
          children: [Text(text), Text("Hello world")],
        ),
      ),
    );
  }
}
