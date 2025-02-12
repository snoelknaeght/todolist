import '../task.dart';
import 'package:faker/faker.dart';

List<Task> tasksCollection = List.generate(20, (index) {
  var fakerInstance = Faker();

  String content = fakerInstance.lorem.sentence();

  TaskStatus status = fakerInstance.randomGenerator.element([TaskStatus.done, TaskStatus.doing]);

 
  DateTime createdAt = fakerInstance.date.dateTime();

 
  DateTime? completedAt;
  if (status == TaskStatus.done) {
    int randomDays = fakerInstance.randomGenerator.integer(10, min: 1);
    int randomHours = fakerInstance.randomGenerator.integer(23);
    int randomMinutes = fakerInstance.randomGenerator.integer(59);
    completedAt = createdAt.add(Duration(days: randomDays, hours: randomHours, minutes: randomMinutes));
  }

  return Task(
    content: content,
    status: status,
    createdAt: createdAt,
    completedAt: completedAt,
  );
});
