class Task {
  final int userId;
  final int id;
  final String title;
  final String body;

  Task({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      userId: json['userId'] ?? 0,
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      body: json['body'] ?? '',
    );
  }
}
