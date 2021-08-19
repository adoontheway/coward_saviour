import 'package:coward_saver/pages/motives.dart';
import 'package:coward_saver/pages/records.dart';
import 'package:coward_saver/pages/targets.dart';
import 'package:coward_saver/view/add_motive.dart';
import 'package:coward_saver/view/add_record.dart';
import 'package:coward_saver/view/add_target.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: IndexPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  GlobalKey<State> refreshKey = GlobalKey();
  int _selectedIndex = 0;
  List<Widget> _views = <Widget>[];
  List<Widget> _addViews = <Widget>[];
  List<GlobalKey> _keys = <GlobalKey>[];
  List<String> _titles = [];
  List<BottomNavigationBarItem> _bottomItems = [];

  @override
  void initState() {
    super.initState();
    _keys = [GlobalKey(), GlobalKey(), GlobalKey()];
    _views = <Widget>[
      RecordPage(_keys[0]),
      MotivationPage(_keys[1]),
      TargetPage(_keys[2])
    ];
    _addViews = <Widget>[AddRecordView(), AddMotiveView(), AddTargetView()];
    _titles = ["记录", "动力", "小目标"];

    _bottomItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: '日常记录'),
      BottomNavigationBarItem(icon: Icon(Icons.business), label: '动力'),
      BottomNavigationBarItem(icon: Icon(Icons.school), label: '小目标'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coward Saver"), //Text("懦夫救星"),
      ),
      body: _views[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomItems,
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        fixedColor: Colors.green,
        unselectedItemColor: Colors.orange,
        iconSize: 32,
        selectedFontSize: 16,
        unselectedFontSize: 12,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _onAdd,
      ),
    );
  }

  void _onAdd() {
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return SimpleDialog(
            title: Text("Add ${_titles[_selectedIndex]}"),
            children: [_addViews[_selectedIndex]],
          );
        }).then((value) {
      if (value) {
        print('closed, need update? - $value');
        // setState(() {});
        // _views[_selectedIndex]
        _keys[_selectedIndex].currentState?.setState(() {});
      }
    });
  }

  void _onItemTap(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
