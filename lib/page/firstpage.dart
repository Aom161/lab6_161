import 'package:flutter/material.dart';
import 'package:lab6_161/hobby.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<Hobby> hobbies = [];
  List _selectedItem = [];
  bool YouTube = false;

  @override
  void initState() {
    super.initState();
    hobbies = Hobby.getHobby();
    print(hobbies);
  }

  List<Widget> createCheckbox() {
    List<Widget> widgets = [];

    for (var hb in hobbies) {
      widgets.add(CheckboxListTile(
        value: hb.value,
        onChanged: (value) {
          setState(() {
            hb.value = value!;
            if (value) {
              _selectedItem.add(hb.name);
            } else {
              _selectedItem.remove(hb.name);
            }
          });
        },
        title: Text(hb.name),
      ));
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab6_161"),
        backgroundColor: Color.fromARGB(255, 194, 235, 255),
      ),
      body: Column(
        children: [
          Text("งานอดิเรก"),
          Column(
            children: createCheckbox(),
          ),
          Text(_selectedItem.toString()),
        ],
      ),
    );
  }
}
