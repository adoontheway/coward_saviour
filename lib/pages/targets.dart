import 'package:flutter/material.dart';

class TargetPage extends StatefulWidget {
  final Key key;
  const TargetPage(this.key);
  @override
  _TargetPageState createState() => _TargetPageState();
}

class _TargetPageState extends State<TargetPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('this is target page'),
      ),
    );
  }
}
