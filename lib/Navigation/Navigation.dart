import 'package:flutter/material.dart';
import 'package:sound_reconized/Home/VoiceHome.dart';
import 'package:sound_reconized/HowToUse/HowToUse.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  // init list of tabsbar
  final List<Map<String, Object>> _listTabsbar = [
    {
      'title': 'Sound Recognizer',
      'body': VoiceHome(),
      'icon': Icons.home,
      'icon_name': 'Home',
    },
    {
      'title': 'How To Use',
      'body': HowToUse(),
      'icon': Icons.explore,
      'icon_name': 'Tutorial',
    }
  ];
  // init index of tabsbar
  int _indexTabsbar = 0;
  // select a tabs
  void _selectTabsbar(index) {
    setState(() {
      _indexTabsbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final AppBar appBar = AppBar(
      leading: Builder(
          builder: (BuildContext context){
            return IconButton(
              icon: Icon(Icons.volume_up),
              color: Colors.white,
              onPressed: () {

              },
            );
          }),
      title: Text(_listTabsbar[_indexTabsbar]['title'],
          style: TextStyle(color: Colors.white)),
    );
    return Scaffold(
      appBar: appBar,
      body: Container(
        height: MediaQuery.of(context).size.height - appBar.preferredSize.height,
        child: _listTabsbar[_indexTabsbar]['body'],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexTabsbar,
        onTap: _selectTabsbar,
      items: [
        for (final e in _listTabsbar)
          BottomNavigationBarItem(
          icon: Icon(e['icon']),
          title: Text(e['icon_name']),
        ),
      ],
    ));
  }
}