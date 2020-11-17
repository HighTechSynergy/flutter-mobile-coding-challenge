import 'package:flutter/material.dart';

class DropdownLocalScreen extends StatefulWidget {
  @override
  _DropdownLocalScreenState createState() => _DropdownLocalScreenState();
}

class _DropdownLocalScreenState extends State<DropdownLocalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Component Test'),
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
