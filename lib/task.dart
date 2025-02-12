import 'package:uuid/uuid.dart';

enum TaskStatus { todo, doing, done }

class Task {
  String content;
  String id;
  DateTime createdAt;
  DateTime? completedAt;
  TaskStatus status;

  Task({
    required this.content,
    String? id,
    this.status = TaskStatus.todo,
    DateTime? createdAt,
    this.completedAt,
  })  : id = id ?? Uuid().v4(),
        createdAt = createdAt ?? DateTime.now();

  @override
  String toString() {
    return 'Task(content: $content, status: $status, createdAt: $createdAt)';
  }
}
