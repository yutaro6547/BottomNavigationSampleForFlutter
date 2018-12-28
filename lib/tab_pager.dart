import 'package:bottom_navigation_sample/sample_tab_item.dart';
import 'package:flutter/material.dart';

class TabPagerItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TabPagerState();
  }
}

class TabPagerState extends State<TabPagerItem> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(
        children: <Widget>[
          new SampleTabItem("１個目", Colors.amber),
          new SampleTabItem("２個目", Colors.deepPurpleAccent),
          new SampleTabItem("３個目", Colors.orange),
        ],
        controller: controller,
      ),
    );
  }
}