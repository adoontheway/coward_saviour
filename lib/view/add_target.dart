import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

class AddTargetView extends StatefulWidget {
  @override
  _AddTargetViewState createState() => _AddTargetViewState();
}

class _AddTargetViewState extends State<AddTargetView> {
  TextEditingController _contentController = TextEditingController();
  int _curLevel = 1;

  void _onChange(double value) {
    print("level changed : $value");
    setState(() {
      _curLevel = value.round();
    });
  }

  void _onAdd() {
    // print("the input content is ${_contentController.text}");
    // Profile.addTarget(_contentController.text, ,_curLevel);
    Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 480,
      child: Column(
        children: [
          TextField(
            autofocus: false,
            maxLines: 1,
            controller: _contentController,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10.0),
                labelText: "Content"),
          ),
          SizedBox(
            height: 10.0,
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
          DateTimePicker(
            type: DateTimePickerType.dateTime,
            dateMask: "yyyy-MM-dd hh-mm",
            initialDate: DateTime.now().add(Duration(minutes: 10)),
            firstDate: DateTime(2021),
            lastDate: DateTime(2100),
            icon: Icon(Icons.event),
            dateLabelText: 'Date',
            timeLabelText: "Hour",
            onChanged: (val) => print(val),
            validator: (val) {
              print(val);
              return null;
            },
            onSaved: (val) => print(val),
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
                onPressed: () => Navigator.of(context).pop(false),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
