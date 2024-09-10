import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/models/save_task.dart';
import 'package:todo_provider/pages/add_todo.dart';
import 'package:todo_provider/pages/todo_list.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SaveTask(),
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      // CRIAMOS UMA ROTA
      initialRoute: "/",
      routes: {
        "/": (_) => const TodoList(),
        "/add-todo-screen": (_) => AddTodo(),
      },
    );
  }
}
