
/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/db/database_provider.dart';

class AddNotePage extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();

  Future<void> _insertData(BuildContext context) async {
    final String title = _titleController.text;
    final String body = _bodyController.text;

    if (title.isNotEmpty && body.isNotEmpty) {
      await DatabaseProvider().insertNote(title, body);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Note'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                hintText: 'Title',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _bodyController,
              decoration: InputDecoration(
                hintText: 'Body',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _insertData(context),
              child: Text('Add Note'),
            ),
          ],
        ),
      ),
    );
  }
}*/