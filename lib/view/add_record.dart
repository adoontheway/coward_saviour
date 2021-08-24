import 'package:coward_saver/theme.dart';
import 'package:coward_saver/mgr/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddRecordView extends StatefulWidget {
  @override
  _AddRecordViewState createState() => _AddRecordViewState();
}

class _AddRecordViewState extends State<AddRecordView> {
  bool _useful = true; //当前做的事情是否有用
  TextEditingController _recordController = TextEditingController();
  TextEditingController _costController = TextEditingController();

  void _addRecord() {
    int cost = int.parse(_costController.text);
    Profile.addRecord(_recordController.text, DateTime.now(), _useful, cost);
    Navigator.of(context).pop(true);
  }

  void _onUseful(value) {
    setState(() {
      _useful = value;
    });
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
              labelText: "内容",
            ),
            style: InputStyleNormal,
          ),
          TextField(
            controller: _costController,
            maxLines: 1,
            maxLength: 10,
            style: InputStyleNormal,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10.0),
              labelText: "花费（时间，人力，物力）",
            ),
          ),
          Text(
            "有用吗？对你对未来有任何帮助吗？",
            style: TextStyle(fontSize: FontSizeLabel, color: TextLabelColor),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Radio(
                groupValue: this._useful,
                value: true,
                onChanged: _onUseful,
              ),
              Text(
                '有用',
                style:
                    TextStyle(color: TextLabelColor, fontSize: FontSizeLabel),
              ),
              Radio(
                groupValue: this._useful,
                value: false,
                onChanged: _onUseful,
              ),
              Text(
                '没用/感觉没用',
                style:
                    TextStyle(color: TextLabelColor, fontSize: FontSizeLabel),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                  child: Text(
                    "添加",
                    style: TextStyle(fontSize: FontSizeLabel),
                  ),
                  onPressed: () {
                    _addRecord();
                  }),
              OutlinedButton(
                  child: Text(
                    "取消",
                    style: TextStyle(fontSize: FontSizeLabel),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  })
            ],
          ),
        ],
      ),
    );
  }
}
