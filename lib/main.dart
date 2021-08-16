import 'package:coward_saver/pages/motives.dart';
import 'package:coward_saver/pages/records.dart';
import 'package:coward_saver/pages/targets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.grey),
      home: IndexPage(),
    );
  }
}

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _selectedIndex = 0;
  List<Widget> _views = <Widget>[RecordPage(), MotivationPage(), TargetPage()];
  List<BottomNavigationBarItem> _bottomItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Records'),
    BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Motivations'),
    BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Targets'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("懦夫救星"),
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
    print("on add");
  }

  void _onItemTap(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
