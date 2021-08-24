import 'package:coward_saver/mgr/profile.dart';
import 'package:coward_saver/models/record.dart';
import 'package:coward_saver/theme.dart';
import 'package:flutter/material.dart';

class RecordPage extends StatefulWidget {
  final Key key;
  const RecordPage(this.key);
  @override
  _RecordPageState createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  List<Record> _records = Profile.records;
  final TextStyle _uselessStyle = TextStyle(
      color: Colors.red, fontSize: FontSizeTitle, fontWeight: FontWeight.bold);
  final TextStyle _usefulStyle = TextStyle(
      color: Colors.green,
      fontSize: FontSizeTitle,
      fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.separated(
            itemBuilder: (BuildContext ctx, int index) {
              Record _r = _records[index];
              return Container(
                margin: const EdgeInsets.all(10.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "[${_r.cost} minutes]  ${_r.content} ",
                      style: _r.useful ? _usefulStyle : _uselessStyle,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "${_r.datetime.toLocal()} ",
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext ctx, int index) {
              return Divider(
                height: 8.0,
                color: Colors.black,
              );
            },
            itemCount: _records.length));
  }
}
