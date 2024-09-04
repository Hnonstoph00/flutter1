import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home/homeView.dart';
import 'package:flutter_application_1/Screen/MyCollection/myCollectionView.dart';
import 'package:flutter_application_1/Screen/Trending/trendingView.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabBar App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainView(),
    );
  }
}

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,  // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Example'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Home'),
              Tab(text: 'Trending'),
              Tab(text: 'My Collection'),
            ],
          ),
        ),
        body: TabBarView(
          children: const [
            HomeView(),
            TrendingView(),
            MyCollectionView(),
          ],
        ),
      ),
    );
  }
}

