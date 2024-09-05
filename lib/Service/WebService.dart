import '../Model/TrendingModel/trending_model.dart';
import 'dart:convert';  // For jsonDecode
import 'package:flutter/services.dart';

abstract class TrendingService {
  Future<List<TrendingModel>> getData();
}

class TrendingServiceImpl implements TrendingService {
  @override
  Future<List<TrendingModel>> getData() async {
    try {
          await Future.delayed(Duration(seconds: 5));
          
      // Load the JSON file from assets
      final String response = await rootBundle.loadString('lib/assets/json/trending_data.json');

      // Decode the JSON file
      final List<dynamic> jsonData = jsonDecode(response);

      // Convert the JSON list into a list of TrendingModel
      List<TrendingModel> trendingList = jsonData.map((json) => TrendingModel.fromJson(json)).toList();

      return trendingList;
    } catch (e) {
      throw Exception('Failed to load trending data: $e');
    }
  }
}
