class Task {
  String title;
  int priority;
  DateTime? dueDate;
  bool isCompleted;
  bool isImportant;

  Task({
    required this.title,
    this.priority = 0,
    this.dueDate,
    this.isCompleted = false,
    this.isImportant = false,
  });

  factory Task.formJson(Map<String, dynamic> json) {
    return Task(
      title: json['title'],
      isCompleted: json['isCompleted'] ?? false,
      isImportant: json['isImportant'] ?? false,
      dueDate: json['dueDate'] != null ? DateTime.parse(json['dueDate']) : null,
      priority: json['priority'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'isImportant': isImportant,
      'isCompleted': isCompleted,
      'dueDate': dueDate?.toIso8601String(),
      'priority': priority,
    };
  }
}
