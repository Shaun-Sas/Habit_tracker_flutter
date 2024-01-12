import 'package:flutter/material.dart';
import 'package:habbit_tracker/componenets/habit_tile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List todayHabitList = [
    ["Morning Run", false],
    ["Read Book ", false],
  ];

  void checkboxTapped(bool? value, int index) {
    setState(() {
      todayHabitList[index][1] = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: ListView.builder(
            itemCount: todayHabitList.length,
            itemBuilder: (content, index) {
              return HabitTile(
                  habitCompleted: todayHabitList[index][1],
                  habitName: todayHabitList[index][0],
                  onChanged: (value) => checkboxTapped(value, index));
            }));
  }
}
