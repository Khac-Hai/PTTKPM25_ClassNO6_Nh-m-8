import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // Tắt banner debug
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Demo radio'),
      ),
      body: DemoRadio(), // Tên class nên viết hoa chữ cái đầu
    ),
  ));
}

// Theo quy ước, tên class nên được viết theo kiểu PascalCase (ví dụ: DemoRadio)
class DemoRadio extends StatefulWidget {
  const DemoRadio({super.key});

  @override
  State<DemoRadio> createState() => _DemoRadioState();
}

class _DemoRadioState extends State<DemoRadio> {
  // Chỉ cần MỘT biến để quản lý trạng thái cho cả nhóm radio
  String _gt = 'nam'; // Nên khởi tạo giá trị ban đầu

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Dùng RadioListTile là cách tốt nhất để kết hợp ListTile và Radio
        RadioListTile<String>(
          secondary: Icon(Icons.male), // Icon nam
          title: Text(
            'Nam',
            style: TextStyle(color: Colors.red),
          ),
          subtitle: Text('Giới tính nam'),
          value: 'nam',
          groupValue: _gt,
          onChanged: (newValue) {
            setState(() {
              // gán giá trị mới cho biến trạng thái
              if (newValue != null) {
                _gt = newValue;
              }
            });
          },
        ),
        RadioListTile<String>(
          secondary: Icon(Icons.female), // Icon nữ
          title: Text('Nữ'),
          subtitle: Text('Giới tính nữ'),
          value: 'nu',
          groupValue: _gt,
          onChanged: (newValue) {
            setState(() {
              if (newValue != null) {
                _gt = newValue;
              }
            });
          },
        ),
        RadioListTile<String>(
          secondary: Icon(Icons.transgender), // Icon cho giới tính khác
          title: Text('Khác'),
          subtitle: Text('Giới tính khác'),
          value: 'khac',
          groupValue: _gt,
          onChanged: (newValue) {
            setState(() {
              if (newValue != null) {
                _gt = newValue;
              }
            });
          },
        ),
      ],
    );
  }
}