import 'package:flutter/material.dart';

void main() {
  runApp(StudentApp());
}

class Student {
  final String id;
  final String name;
  final double score;
  final DateTime dob;

  Student({
    required this.id,
    required this.name,
    required this.score,
    required this.dob,
  });
}

class StudentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quản lý sinh viên",
      home: StudentPage(),
    );
  }
}

class StudentPage extends StatefulWidget {
  @override
  _StudentPageState createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  final _idController = TextEditingController();
  final _nameController = TextEditingController();
  final _scoreController = TextEditingController();
  final _dobController = TextEditingController();

  final List<Student> students = [];

  void _addStudent() {
    if (_idController.text.isEmpty ||
        _nameController.text.isEmpty ||
        _scoreController.text.isEmpty ||
        _dobController.text.isEmpty) {
      return;
    }

    final newStudent = Student(
      id: _idController.text,
      name: _nameController.text,
      score: double.tryParse(_scoreController.text) ?? 0,
      dob: DateTime.tryParse(_dobController.text) ?? DateTime.now(),
    );

    setState(() {
      students.add(newStudent);
    });

    _idController.clear();
    _nameController.clear();
    _scoreController.clear();
    _dobController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quản lý sinh viên"),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              controller: _idController,
              decoration: InputDecoration(labelText: "Mã sinh viên"),
            ),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: "Họ và tên"),
            ),
            TextField(
              controller: _scoreController,
              decoration: InputDecoration(labelText: "Điểm tốt nghiệp"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _dobController,
              decoration: InputDecoration(labelText: "Ngay sinh"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _addStudent,
              child: Text("Thêm sinh viên"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  final s = students[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 6),
                    child: ListTile(
                      leading: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          s.score.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      title: Text("${s.id} - ${s.name}"),
                      subtitle: Text("${s.dob.toLocal()}"),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
