

import 'package:flutter/material.dart';

class MyCollectionView extends StatelessWidget {
  const MyCollectionView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(padding: const EdgeInsets.only(left: 40, right: 40, top: 40, bottom: 100), child: const Center(child: Image(image: AssetImage('lib/assets/images/lockcode.png'))));
  }
}