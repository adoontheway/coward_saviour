import 'package:coward_saver/mgr/profile.dart';
import 'package:coward_saver/models/target.dart';
import 'package:flutter/material.dart';

class TargetPage extends StatefulWidget {
  final Key key;
  const TargetPage(this.key);
  @override
  _TargetPageState createState() => _TargetPageState();
}

class _TargetPageState extends State<TargetPage> {
  List<Target> _targets = Profile.targets;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              Target _t = _targets[index];
              return Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      _t.content,
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                    Text("Deadline: ${_t.deadline}")
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                height: 5.0,
                color: Colors.black26,
              );
            },
            itemCount: _targets.length));
  }
}
