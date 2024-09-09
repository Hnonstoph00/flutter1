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
    return Material(
      child:   MainController(tabController: _tabController),
      );
  }
}

class BannerView extends StatelessWidget {
  const BannerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
    );
  }
}

class MainController extends StatelessWidget {
  final TabController tabController;

  const MainController({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              HomeView(trendingService: TrendingServiceImpl()),
              TrendingView(),
              const MyCollectionView(),
            ],
          ),
        ),
        Container(
          color: Colors.white, // Background color of the BottomAppBar
          height: 80.0, // Fixed height for the TabBar
          child: TabBar(
            controller: tabController,
            indicator: const BoxDecoration(), // Removes the tab indicator

            tabs: [
              CustomTab(
                  icon: Icons.home,
                  label: 'Home',
                  index: 0,
                  controller: tabController),
              CustomTab(
                  icon: Icons.trending_up,
                  label: 'Trending',
                  index: 1,
                  controller: tabController),
              CustomTab(
                  icon: Icons.favorite,
                  label: 'My Collection',
                  index: 2,
                  controller: tabController),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomTab extends StatelessWidget {
  final IconData icon;
  final String label;
  final int index;
  final TabController controller;

  const CustomTab({
    required this.icon,
    required this.label,
    required this.index,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = controller.index == index;
    return Tab(
      icon: Icon(
        icon,
        color: isSelected
            ? Colors.blue
            : Colors.grey, // Change icon color based on selection
      ),
      text: label,
    );
  }
}
