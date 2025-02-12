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
                  Icon leadingIcon = buildIcon(task.status);

                  return ListTile(
                     leading: leadingIcon,
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
 Icon buildIcon(TaskStatus status) {
    switch (status) {
      case TaskStatus.todo:
        return Icon(Icons.circle, color: const Color.fromARGB(255, 231, 246, 14)); 
      case TaskStatus.doing:
        return Icon(Icons.circle, color: Colors.orange); 
      case TaskStatus.done:
        return Icon(Icons.check_circle, color: Colors.green);  
      default:
        return Icon(Icons.help, color: Colors.grey);  
    }
  }
