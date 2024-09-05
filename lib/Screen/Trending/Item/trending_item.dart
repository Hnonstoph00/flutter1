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
          children: [
            const Text("Hello world",
                style: TextStyle(color: Colors.white, height: 1)),
            Text(text, style: const TextStyle(color: Colors.white, height: 1)),
            const Text("Hello world",
                style: TextStyle(color: Colors.white, height: 1)),
            const Expanded(
                child: Image(
              image: AssetImage('lib/assets/images/lockcode.png'),
              fit: BoxFit.contain,
            )),
            const Text("Hello world",
                style: TextStyle(color: Colors.white, height: 1)),
          ],
        ),
      ),
    );
  }
}
