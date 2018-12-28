import 'package:bottom_navigation_sample/sample_tab_item.dart';
import 'package:bottom_navigation_sample/tab_pager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "BottomNavigationSample",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  int currentIndex = 0;
  final List<Widget> tabs = [
    TabPagerItem(),
//    SampleTabItem("左の画面", Colors.red),
    SampleTabItem("真ん中の画面", Colors.green),
    SampleTabItem("右の画面", Colors.cyan),
  ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("BottomNavigationSample"),
        backgroundColor: Colors.blue,
      ),
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile')
          )
        ],
      ),
    );
  }
}