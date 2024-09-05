import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/TrendingModel/trending_model.dart';
import 'package:flutter_application_1/Service/WebService.dart';

class HomeView extends StatefulWidget {
  final TrendingServiceImpl trendingService;

  const HomeView({Key? key, required this.trendingService}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<TrendingModel> trendingList = [];
  bool isLoading = true; // To show loading indicator while fetching data

  @override
  void initState() {
    super.initState();
    loadTrendingData();
  }

  Future<void> loadTrendingData() async {
    try {
      List<TrendingModel> data = await widget.trendingService.getData();
      setState(() {
        trendingList = data;
        isLoading = false; // Data fetched, stop showing the loading indicator
      });
    } catch (e) {
      print("Error fetching trending data: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trending Data'),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator()) // Show loading indicator while data is being fetched
          : ListView.builder(
              itemCount: trendingList.length,
              itemBuilder: (context, index) {
                TrendingModel item = trendingList[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text('Created by: ${item.createUser}, Hearts: ${item.heartCount}'),
                );
              },
            ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomeView(trendingService: TrendingServiceImpl()),
  ));
}