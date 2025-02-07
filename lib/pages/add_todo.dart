import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/models/save_task.dart';
import 'package:todo_provider/models/task_model.dart';

class AddTodo extends StatelessWidget {
  AddTodo({super.key});
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextField(
              controller: controller,
              autofocus: true,
              decoration: const InputDecoration(
                hintText: "Title",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<SaveTask>().addTask(
                      Task(
                        title: controller.text,
                        isCompleted: false,
                      ),
                    );
                controller.clear();
                Navigator.of(context).pop();
              },
              child: const Text("Add"),
            ),
          ],
        ),
      ),
    );
  }
}
