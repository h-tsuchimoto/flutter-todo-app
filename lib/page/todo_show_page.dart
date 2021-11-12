import 'package:flutter/material.dart';
import '../model/todo.dart';

class TodoShowPage extends StatefulWidget {
  final TodoContent todo;
  TodoShowPage({Key? key, required this.todo}) : super(key: key);

  @override
  _TodoShowState createState() => _TodoShowState();
}

class _TodoShowState extends State<TodoShowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.todo.title),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("タイトル: ${widget.todo.title}"),
              Text("内容"),
              Text(widget.todo.content),
              Text("状態: ${widget.todo.getStateString()}"),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    widget.todo.setNextState();
                  });
                  ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("状態を更新しました")));
                },
                child: Text("状態を更新"),
              )
            ]
          )
        )
      )
    );
  }
}