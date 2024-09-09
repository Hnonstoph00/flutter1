import 'package:flutter/material.dart';

// Part 1: GridView Widget
class CustomGridView extends StatelessWidget {
  final List<String> items;

  const CustomGridView({required this.items, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.blueAccent,
            child: Text(
              items[index],
              style: TextStyle(color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}

// Part 2: Button Widget
class AddItemsButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AddItemsButton({required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text("Add More Items"),
      ),
    );
  }
}

// Main Widget that combines both CustomGridView and AddItemsButton
class TrendingView extends StatefulWidget {
  @override
  _TrendingWidgetState createState() => _TrendingWidgetState();
}

class _TrendingWidgetState extends State<TrendingView> {
  // List of items to show in GridView
  List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4"];

  // Function to add more items to the grid
  void _addMoreItems() {
    items.addAll([
      "Item ${items.length + 1}",
    ]);
    setState(() {});
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trending Widget'),
      ),
      body: Column(
        children: [
          // Display the GridView widget
          CustomGridView(items: items),

          // Display the Button widget
          AddItemsButton(onPressed: _addMoreItems),
        ],
      ),
    );
  }
}
