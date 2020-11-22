import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChnaged = false;

  void changeState(bool changedValue) {
    setState(() {
      isChnaged = changedValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a note',
        style: TextStyle(
          decoration: isChnaged ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Mycheckbox(
        valueChanged: isChnaged,
        changeState: changeState,
      ),
    );
  }
}

class Mycheckbox extends StatelessWidget {
  final bool valueChanged;
  final Function changeState;
  Mycheckbox({this.valueChanged, this.changeState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: valueChanged,
      activeColor: Colors.lightBlueAccent,
      onChanged: changeState,
    );
  }
}
