import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Huy Ky'),
      ),
      body: democheckbox(),
    ),
  ));
}


class democheckbox extends StatefulWidget {
  const democheckbox({super.key});

  @override
  State<democheckbox> createState() => _democheckboxState();
}

class _democheckboxState extends State<democheckbox> {
  bool nganh = false;
  bool khoa = false;
  bool truong = false;
  String?chonnganh;
  List<String> nganhhoc = ['cntt', 'khmt', 'ksxd', 'o to'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('CNTT'),
          subtitle: Text('PHENIKAA'),
          trailing: Icon(Icons.info),
          leading: Checkbox(
              checkColor: Colors.amber,
              value: nganh,
              onChanged: (value){
                setState(() {
                  nganh = value!;
                });
              }),
        ),
        CheckboxListTile(
            title: Text('Class'),
            subtitle: Text('CNTT 5'),
            value: khoa,
            onChanged: (value){
              setState(() {
                khoa = value!;
              });
            }),
        CheckboxMenuButton(
            value: truong,
            onChanged: (value){
              setState(() {
                truong = value!;
              });
            },
            child: Text('Phenikaa')),
        DropdownButton(
            hint: Text('Chon nganh yeu thich'),
            icon: Icon(Icons.heart_broken),
            iconEnabledColor: Colors.blue,
            value: chonnganh,
            borderRadius: BorderRadius.circular(20),
            items: nganhhoc.map((String value){
              return DropdownMenuItem(
                  value: value,
                  child: Text(value));
            }).toList(),
            onChanged: (value){
              setState(() {
                chonnganh=value;
              });
            })
      ],
    );
  }
}
