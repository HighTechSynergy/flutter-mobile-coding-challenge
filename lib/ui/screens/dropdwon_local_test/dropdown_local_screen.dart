import 'package:flutter/material.dart';
import 'package:hts_test_app/models/example_state.dart';
import 'package:hts_test_app/ui/core/styles.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

class DropdownLocalScreen extends StatefulWidget {
  @override
  _DropdownLocalScreenState createState() => _DropdownLocalScreenState();
}

class _DropdownLocalScreenState extends State<DropdownLocalScreen> {
  ExampleState selectedState;
  final List<DropdownMenuItem> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Component Test'),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 200,
            child: Column(
              children: [
                Text(
                  'State:',
                  style: kBodyText1,
                ),
                SizedBox(
                  height: 10,
                ),
                SearchableDropdown.single(
                  items: ExampleState.list.map((exState) {
                    return DropdownMenuItem(
                      child: Text(exState.numberString),
                      value: exState,
                    );
                  }).toList(),
                  value: selectedState,
                  hint: "Select state",
                  searchHint: "Select state",
                  onChanged: (value) {
                    setState(() {
                      selectedState = value;
                    });
                  },
                  isExpanded: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
