import 'package:flutter/material.dart';

class TrialPage extends StatefulWidget {
  TrialPage({super.key});

  @override
  State<TrialPage> createState() => _TrialPageState();
}

class _TrialPageState extends State<TrialPage> {
  DateTime selectedDate = DateTime.now();
  String dropdownvalue = "one";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: DropdownButton(
              value: dropdownvalue,
              underline: Container(
                height: 2,
                color: Colors.blueAccent,
              ),
              onChanged: (newvalue) {
                setState(() {
                  dropdownvalue = newvalue.toString();
                });
              },
              items: const [
                DropdownMenuItem(
                  child: Text("one"),
                  value: "one",
                ),
                DropdownMenuItem(
                  child: Text("two"),
                  value: "two",
                ),
                DropdownMenuItem(
                  child: Text("three"),
                  value: "three",
                ),
              ],
            ),
          ),
          const Divider(),
          Text(
              " ${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day}"),
          ElevatedButton(
            onPressed: () async {
              final DateTime? dateTime = await showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(300));
              if (dateTime != null) {
                setState(() {
                  selectedDate = dateTime;
                });
              }
              ;
            },
            child: const Text("Choose a date"),
          )
        ],
      ),
    );
  }
}
