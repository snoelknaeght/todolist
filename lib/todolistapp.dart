import 'package:flutter/material.dart';
import './static.dart';
import './task.dart';
void main() {
  runApp(const TodolistApp());
}
class test{}

class TodolistApp extends StatelessWidget {
  const TodolistApp({super.key});
  @override
  
  Widget build(BuildContext context) {
        print(tasksCollection);

    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
           /* Expanded(child: ListTile(tasksCollection), Text)
            ListView.builder(itemBuilder: tasksCollection)*/
          )
        ),
      ),
    );
  }
} 
