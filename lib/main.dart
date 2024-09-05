import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home/home_view.dart';
import 'package:flutter_application_1/Screen/MyCollection/my_collection_view.dart';
import 'package:flutter_application_1/Screen/Trending/trending_view.dart';
import 'package:flutter_application_1/Service/WebService.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TabBar App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainView(),
    );
  }
}

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,  // Number of tabs
      child: Scaffold(
        body: TabBarView(
          children: [
            HomeView(trendingService: TrendingServiceImpl(),),
            const TrendingView(),
            const MyCollectionView(),
          ],
        ),
        bottomNavigationBar: const BottomAppBar(
          child: TabBar(
            tabs: [
              Tab(text: 'Home'),
              Tab(text: 'Trending'),
              Tab(text: 'My Collection'),
            ],
          ),
        ),
      ),
    );
  }
}