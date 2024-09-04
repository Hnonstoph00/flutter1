

import 'package:flutter/material.dart';

class MyCollectionView extends StatelessWidget {
  const MyCollectionView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(child: ElevatedButton(onPressed: () {
        Navigator.pop(context);

    }, child: Text("Go back"),));
  }
}
