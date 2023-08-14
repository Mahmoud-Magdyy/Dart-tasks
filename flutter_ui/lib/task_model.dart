class TaskModel {
  final int id;
  final String title;
  final String note;
  final String date;

  TaskModel(
      {required this.id,
      required this.title,
      required this.note,
      required this.date});
  factory TaskModel.fromJsom(Map<String, dynamic> jsonData) {
    return TaskModel(
        date: jsonData["date"],
        title: jsonData["title"],
        note: jsonData["note"],
        id: jsonData["id"]);
  }
}
