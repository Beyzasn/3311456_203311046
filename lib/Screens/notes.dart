import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/note_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  late Database _database;
  late TextEditingController _titleController;
  late TextEditingController _bodyController;
  List<Map<String, dynamic>> _data = [];

  @override
  void initState() {
    super.initState();
    _openDatabase();
    _titleController = TextEditingController();
    _bodyController = TextEditingController();
  }

  Future<void> _openDatabase() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'example.db');
    _database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
        'CREATE TABLE IF NOT EXISTS notes (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, body TEXT)',
      );
    });
    await _refreshData();
  }

  Future<void> _refreshData() async {
    final List<Map<String, dynamic>> data = await _database.query('notes');
    setState(() {
      _data = data;
    });
  }

  Future<void> _insertData() async {
    final String title = _titleController.text;
    final String body = _bodyController.text;

    if (title.isNotEmpty && body.isNotEmpty) {
      await _database.insert(
        'notes',
        {'title': title, 'body': body},
      );
      _titleController.clear();
      _bodyController.clear();
      await _refreshData();
    }
  }

  Future<void> _deleteData(int id) async {
    await _database.delete(
      'notes',
      where: 'id = ?',
      whereArgs: [id],
    );
    await _refreshData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 20, 122),
        title: Text('Notların'),
      ),
      body: Column(
       
        children: [
           Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Not Ekle',style: TextStyle(color: Colors.blue[900],fontSize: 22,fontWeight: FontWeight.bold),),
             SizedBox(height: 8.0),
              TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  hintText: 'Başlık',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _bodyController,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Not',
                ),
              ),
            ],
          ),
        ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Container(
              color: Colors.black,
              height: 2.0,
            ),
             SizedBox(height: 16.0),
            Text('Notlarım',style: TextStyle(color: Colors.yellow[900],fontSize: 22,fontWeight: FontWeight.bold),),
             SizedBox(height: 8.0),
          ],
        ),
      ),
      
          Expanded(
            child: ListView.builder(
              itemCount: _data.length,
              itemBuilder: (context, index) {
                final item = _data[index];
                return Card(
                  child: ListTile(
                    title: Text(item['title']),
                    subtitle: Text(item['body']),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () => _deleteData(item['id']),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
         onPressed: _insertData,
        /*onPressed: (() {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: ((context) => addnotescreen())));
        }),*/
        child: Icon(Icons.add),
      ),
      
    );
  }

  @override
  void dispose() {
    _database.close();
    _titleController.dispose();
    _bodyController.dispose();
    super.dispose();
  }
}

class addnotescreen extends StatefulWidget {
  const addnotescreen({super.key});

  @override
  State<addnotescreen> createState() => _addnotescreenState();
}

class _addnotescreenState extends State<addnotescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 13, 20, 122),
          title: Text('Yeni Not Ekle'),
        ),
        body: Column(
          children: [
            Expanded(
              child: TextField(
                // controller: _titleController,
                decoration: InputDecoration(
                  hintText: 'Başlık',
                ),
              ),
            ),
            SizedBox(height: 1.0),
            Expanded(
              child: TextField(
                // controller: _bodyController,
                decoration: InputDecoration(
                  hintText: 'Not',
                ),
              ),
            ),
          ],
        ));
  }
}
