import 'package:flutter/material.dart';

class RecordPage extends StatefulWidget {
  final Key key;
  const RecordPage(this.key);
  @override
  _RecordPageState createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('this is records page'),
      ),
    );
  }
}
