import 'package:uuid/uuid.dart';
enum TaskStatus {todo, doing ,done}
class Task {
  String? content ; 
  String id;
  DateTime createdAt;
  DateTime?  completedAt;
  TaskStatus status;
@override



  Task({required content, String? id, TaskStatus? status, DateTime? createdAt, DateTime? completedAt})
  : id = id ?? Uuid().v4(),
  status = status ?? TaskStatus.todo,
  createdAt = createdAt ?? DateTime.now();
}
