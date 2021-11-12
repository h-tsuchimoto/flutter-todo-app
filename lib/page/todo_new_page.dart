import 'package:flutter/material.dart';

class TodoNewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _titleController = TextEditingController();
    final _contentController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("新規登録"),
      ),
      body: Container(
        child: Center(
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 0, right: 30, bottom: 0, left: 30),
              child: TextField(
                obscureText: false,
                maxLines: 1,
                controller: _titleController,
                decoration: InputDecoration(labelText: "タイトル", hintText: "買い物"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 0, right: 30, bottom: 0, left: 30),
              child: TextField(
                obscureText: false,
                maxLines: 8,
                controller: _contentController,
                decoration: InputDecoration(labelText: "内容", hintText: "りんごを買う"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (!_titleController.text.isEmpty &&
                    !_contentController.text.isEmpty) {
                  Navigator.pop(context, {
                    "title": _titleController.text,
                    "content": _contentController.text
                  });
                }
              },
              child: Text("登録"),
            ),
          ])
        )
      )
    );
  }
}
