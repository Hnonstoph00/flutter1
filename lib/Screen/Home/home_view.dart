
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white, // Background color
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 60, top: 20), // Left and right padding
              child: Container(
                height: 100, // Fixed height for the red part
                color: Colors.red, // Red section color
                width: double.infinity, // Match the width of the parent (with padding applied)
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.green, // Second section color
                      width: double.infinity, // Match the width of the screen
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue, // Third section color
                      width: double.infinity, // Match the width of the screen
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}