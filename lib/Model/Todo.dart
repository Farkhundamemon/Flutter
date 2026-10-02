class Todo {
  String title;
  String? description;
  DateTime? datetime;
  bool isCompleted;
  int? day;

  Todo({
    required this.title,
    this.description,
   this.datetime,
   this.isCompleted = false,
   int? day
  }){
    this.datetime=datetime ?? DateTime.now();
    this.day=day ?? DateTime.now().day;
  }
}