
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/TrendingModel/trending_model.dart';

class TrendingItemTile extends StatefulWidget {
  final TrendingModel item;

  const TrendingItemTile({Key? key, required this.item}) : super(key: key);

  @override
  _TrendingItemTileState createState() => _TrendingItemTileState();
}

class _TrendingItemTileState extends State<TrendingItemTile> {
  bool _isDetailed = false;

  void _toggleDetail() {
    // setState(() {
    //   _isDetailed = !_isDetailed;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Text(widget.item.name);

    return ListTile(
      title: Text(widget.item.name),
      subtitle: Text(
        _isDetailed
          ? 'Created by: ${widget.item.createUser}, Hearts: ${widget.item.heartCount}'
          : 'Tap for more details',
      ),
      onTap: _toggleDetail,
    );
  }
}