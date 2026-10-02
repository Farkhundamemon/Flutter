import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/TODO.dart';


class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final titleController = TextEditingController();
final descriptionController = TextEditingController();

  final List<Todo> todoList = [
    Todo(
      title: "Morning Walk",
      description: "Go for a short walk",
      datetime: DateTime(2024, 6, 10),
      isCompleted: true,
    ),
    Todo(
      title: "Check Emails",
      description: "Check university emails",
    ),
    Todo(
      title: "Practice Coding",
      description: "Practice Flutter",
    ),
    Todo(
      title: "Attend Lecture",
      description: "Attend Flutter lecture",
    ),
    Todo(
      title: "Complete Assignment",
      description: "Finish today's assignment",
    ),
    Todo(
      title: "Read Notes",
      description: "Review class notes",
    ),
    Todo(
      title: "Practice Dart",
      description: "Practice Dart basics",
    ),
    Todo(
      title: "Submit Assignment",
      description: "Upload assignment to portal",
    ),
    Todo(
      title: "Check Messages",
      description: "Check important messages",
    ),
    Todo(
      title: "Work on Project",
      description: "Complete project tasks",
    ),
    Todo(
      title: "Review Code",
      description: "Check today's code",
    ),
    Todo(
      title: "Organize Files",
      description: "Arrange project files",
    ),
    Todo(
      title: "Plan Tomorrow",
      description: "Make a plan for tomorrow",
    ),
    Todo(
      title: "Reply to Sir",
      description: "Reply to the teacher's message",
    ),
    Todo(
      title: "Check University Email",
      description: "Check new university emails",
    ),
    Todo(
      title: "Prepare Presentation",
      description: "Prepare slides for class",
    ),
    Todo(
      title: "Complete Project",
      description: "Finish remaining project work",
    ),
    Todo(
      title: "Practice Flutter",
      description: "Practice Flutter widgets",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        hintText: "Enter title",
                        labelText: "Title",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),

                    SizedBox(height: 15),

                    TextField(
                      controller: descriptionController,
                      decoration: InputDecoration(
                        hintText: "Enter description",
                        labelText: "Description",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),

                    SizedBox(height: 15),

                    ElevatedButton(
                      onPressed: () {
                        print("Save button pressed");
                      },
                      child: Text("Save"),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.brown,
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.brown,
        // leading: CircleAvatar(
        //   backgroundImage: AssetImage('assets/images/pic.jpeg'),
        // ),
        centerTitle: true,
        title: Text(
          'TODO',
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.only(left: 6, right: 8),
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          final todo = todoList[index];

          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 10,
            ),
            width: double.infinity,
            margin: const EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
              color: index % 2 == 0 ?  Color.fromARGB(255, 235, 188, 134):  Color.fromARGB(255, 196, 136, 80),
              borderRadius: BorderRadius.circular(8),
            ),

            child: Row(
              children: [
                Checkbox(
                  value: todo.isCompleted,
                  onChanged: (isCheckvalue) {
                    setState(() {
                      todo.isCompleted = isCheckvalue ?? false;
                    });
                  },
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        todo.title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),

                      Text(
                        todo.description!,
                      ),
                    ],
                  ),
                ),

                Text(
                  todo.datetime != null ? "${todo.datetime?.year}/${todo.datetime?.month}/${todo.datetime?.day}" 
                  : ""
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}