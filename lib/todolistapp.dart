import 'package:flutter/material.dart';
import './static.dart'; 
import './task.dart';   

void main() {
  runApp(const TodolistApp());
}

class TodolistApp extends StatefulWidget {
  const TodolistApp({super.key});

  @override
  _TodolistAppState createState() => _TodolistAppState();
}
final Color todolistThemeMainColor = Color(0xFF3ABCA7);
final ThemeData todolistTheme = ThemeData(
 primaryColor: todolistThemeMainColor);


class _TodolistAppState extends State<TodolistApp> {
  @override
  Widget build(BuildContext context) {
    print(tasksCollection);  

    return MaterialApp(
     theme: todolistTheme,
      home: Scaffold(
        
        appBar: AppBar(
       leading: Image.asset("img/todolist.png"),
          title: Row(            mainAxisAlignment: MainAxisAlignment.spaceBetween,
 children: [
            
              Text ("Todolist",
                style: TextStyle(
                  color: todolistThemeMainColor, 
                  fontWeight: FontWeight.bold,
                  fontSize: 30, 
                )),
              Text(" ${tasksCollection.length} Tasks", 
              style: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.normal,
                fontSize: 20
              ),),
            ],),
        
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
}
