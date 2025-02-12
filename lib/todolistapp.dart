import 'package:flutter/material.dart';
import './static.dart';
import './task.dart';

void main() {
  runApp(const TodolistApp());
}

class TodolistApp extends StatelessWidget {
  const TodolistApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    print(tasksCollection);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Todolist"),
        ),
        body: Column(
          children: [
        
            Expanded(
              child: ListView.builder(
                itemCount: tasksCollection.length,
                itemBuilder: (context, index) {
                  final task = tasksCollection[index]; 

                  return ListTile(
                    
                    title: Text(task.content),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
