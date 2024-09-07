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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainView(),
    );
  }
}

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          HomeView(
            trendingService: TrendingServiceImpl(),
          ),
          const TrendingView(),
          const MyCollectionView(),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: BottomAppBar(
          color: Colors.transparent,
          child: Container(
            child: TabBar(
              dividerColor: Colors.transparent,
              controller: _tabController,
              indicator: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.transparent, // No underline
                  ),
                ),
              ),
              tabs: const [
                Tab(text: 'Home'),
                Tab(text: 'Trending'),
                Tab(text: 'My Collection'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
