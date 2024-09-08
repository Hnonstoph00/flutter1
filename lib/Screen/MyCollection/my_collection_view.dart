import 'package:flutter/material.dart';

class MyCollectionView extends StatelessWidget {
  const MyCollectionView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Colors.amber,
        padding:
            const EdgeInsets.only(left: 40, right: 40, top: 40, bottom: 100),
        child: Container(
            color: Colors.amber,
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      print("LOG + back buton tapped");
                    },
                    child: const Text("Back"))
              ],
            )));
  }
}
