import 'package:flutter/material.dart';
import 'package:chimney/pages.dart';

class ChimneyTabbar extends StatefulWidget {
  _ChimneyTabbarstate createState() => _ChimneyTabbarstate();
}

class _ChimneyTabbarstate extends State<ChimneyTabbar> {
  var _currentIndex = 0;
  final List<StatefulWidget> mainBodys = [FirstPage(),SecondPage(),ThirdPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: buildBottomNavigationBarItems(),
        currentIndex: _currentIndex,
        onTap: _tabbarTapped,
      ),
      body: mainBodys[_currentIndex],
    );
  }

  @override
    void initState() {
      super.initState();
    }

  void _tabbarTapped(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<BottomNavigationBarItem> buildBottomNavigationBarItems() {
    final titles = ["主页", "分类", "我的"];
    final icons = [Icons.access_alarm, Icons.access_time, Icons.account_box];
    var list = List<BottomNavigationBarItem>();
    for (var i = 0; i < titles.length; i++) {
      final item = BottomNavigationBarItem(
        title: Text(
          titles[i],
          style: TextStyle(color: _currentIndex == i ? Colors.blue: Colors.grey),
        ),
        icon: Icon(icons[i]),
      );
      list.add(item);
    }
    return list;
  }
}
