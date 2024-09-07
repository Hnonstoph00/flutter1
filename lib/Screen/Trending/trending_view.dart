import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Trending/Item/trending_item.dart';

class TrendingView extends StatelessWidget {
  const TrendingView({super.key});

  static const List<String> alphabet = <String>['A', 'B', 'C','A', 'B', 'C','A', 'B', 'C','A', 'B', 'C','A', 'B', 'C','A', 'B', 'C','A', 'B', 'C'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return GridView.count(
      childAspectRatio: 2/4,
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisCount: 2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      children: List.generate(alphabet.length, (index) {
        return TrendingItemWidget(text: alphabet[index]);
      }),
    );
  }
}