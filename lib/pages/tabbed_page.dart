import 'package:flutter/material.dart';
import 'package:navigation_4ahif/widgets/A.dart';
import 'package:navigation_4ahif/widgets/B.dart';

class TabbedPage extends StatefulWidget {
  static const route = '/tabbed';

  const TabbedPage({Key? key}) : super(key: key);

  @override
  State<TabbedPage> createState() => _TabbedPageState();
}

class _TabbedPageState extends State<TabbedPage> {
  static const _tabs = [
    A(),
    B(),
  ];

  var _index = 0;

  void _setIndex(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabbed'),
      ),
      body: _tabs[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'A',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'B',
          ),
        ],
        currentIndex: _index,
        onTap: _setIndex,
      ),
    );
  }
}
