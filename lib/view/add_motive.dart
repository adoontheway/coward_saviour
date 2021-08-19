import 'package:coward_saver/model/profile.dart';
import 'package:flutter/material.dart';

class AddMotiveView extends StatefulWidget {
  @override
  _AddMotiveViewState createState() => _AddMotiveViewState();
}

class _AddMotiveViewState extends State<AddMotiveView> {
  TextEditingController _contentController = TextEditingController();
  int _curLevel = 3;
  void _onAdd() {
    print("the input content is ${_contentController.text}");
    Profile.addMotivation(_contentController.text, _curLevel);
    _onCancel();
  }

  void _onCancel() {
    Navigator.of(context).pop();
  }

  void _onChange(double value) {
    print("level changed : $value");
    setState(() {
      _curLevel = value.round();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 480,
      // margin: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          TextField(
            autofocus: false,
            maxLines: 1,
            controller: _contentController,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10.0),
                labelText: "Content"),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Level"),
          Slider(
            value: _curLevel.toDouble(),
            max: 5.0,
            min: 1.0,
            onChanged: _onChange,

            semanticFormatterCallback: (value) {
              return "Level: ${value.round()}";
            },
            label: "Level",
            // divisions: 1,
            autofocus: true,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlinedButton(
                child: Text(
                  "Add",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                onPressed: _onAdd,
              ),
              SizedBox(
                width: 80.0,
              ),
              OutlinedButton(
                child: Text("Cancel"),
                onPressed: _onCancel,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
