import 'package:coward_saver/model/model.dart';
import 'package:coward_saver/model/profile.dart';
import 'package:flutter/material.dart';

class MotivationPage extends StatefulWidget {
  final Key key;
  const MotivationPage(this.key);
  @override
  _MotivationPageState createState() => _MotivationPageState();
}

class _MotivationPageState extends State<MotivationPage> {
  List<Motivation> _motivations = Profile.motivations;
  List<Color> _lvColors = [
    Colors.black,
    Colors.orange,
    Colors.yellow,
    Colors.red,
    Colors.redAccent
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                height: 5.0,
                color: Colors.grey[300],
              );
            },
            itemCount: _motivations.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Text(
                      _motivations[index].content,
                      style: TextStyle(
                          color: _lvColors[_motivations[index].level - 1],
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ],
                ),
              );
            }));
  }
}
