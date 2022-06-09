

import 'package:flutter/material.dart';

class DropDownScreen extends StatefulWidget {
  const DropDownScreen({Key? key}) : super(key: key);

  @override
  State<DropDownScreen> createState() => _DropDownButton();
}

class _DropDownButton extends State<DropDownScreen> {
  @override
  initState() {
    super.initState();
  }

  bool isVisibleGreen = true;
  bool isVisibleBlue = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String dropdownValue = 'One';
    
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown'), 
        backgroundColor: Colors.grey,
        elevation: 30,
        ),
      body: ListView(
        children: [
          Column(children: [
            Container(
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['One', 'Two', 'Free', 'Four']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            )
          ])
        ],
      ),
    );
  }
}
