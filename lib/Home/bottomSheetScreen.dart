import 'package:flutter/material.dart';
import 'package:homeworkout/Model/detailModel.dart';

class BottomSheetModel extends StatefulWidget {
  final DetailModel model;
  const BottomSheetModel({super.key, required this.model});

  @override
  State<BottomSheetModel> createState() => _BottomSheetModelState();
}

class _BottomSheetModelState extends State<BottomSheetModel>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: TabBar(
          controller: _tabController,
          indicatorColor: Colors.blue.shade800,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(text: 'ANIMATION'),
            Tab(
              text: 'VIDEO',
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Content for Tab 1
                Container(
                  child: Center(
                    child: Text('Content for Tab 1'),
                  ),
                ),
                // Content for Tab 2
                Container(
                  child: Center(
                    child: Text('Content for Tab 2'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
