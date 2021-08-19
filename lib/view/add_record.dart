import 'package:coward_saver/model/model.dart';
import 'package:coward_saver/model/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddRecordView extends StatefulWidget {
  @override
  _AddRecordViewState createState() => _AddRecordViewState();
}

class _AddRecordViewState extends State<AddRecordView> {
  bool _useful = false; //当前做的事情是否有用
  TextEditingController _recordController = TextEditingController();
  TextEditingController _costController = TextEditingController();

  void _addRecord() {
    int cost = int.parse(_costController.text),;
    Profile.addRecord(_recordController.text, DateTime.now(), cost);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            controller: _recordController,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10.0),
              labelText: "Record",
            ),
          ),
          TextField(
            controller: _costController,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10.0),
              labelText: "Time cost",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Useful:"),
              Switch(
                value: _useful,
                onChanged: (value) {
                  setState(() {
                    _useful = !_useful;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                  child: Text("commit"),
                  onPressed: () {
                    _addRecord();
                  }),
              SizedBox(
                width: 20,
              ),
              OutlinedButton(
                  child: Text("cancel"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  })
            ],
          ),
        ],
      ),
    );
  }
}
