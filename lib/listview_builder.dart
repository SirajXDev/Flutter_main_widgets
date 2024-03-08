import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:  ListView.builder(
     // itemCount: 40,
        itemCount:teachers.length,
     
      itemBuilder: (context, index) {
        return  Card(
          color: Colors.red,
          elevation: 10,
          shadowColor: Colors.amber,
          margin:const EdgeInsets.all(10),
          shape: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
            
          child: ListTile(
           // leading: Icon(Icons.person),
            //trailing: Icon(Icons.call),
           // title:  Text( 'siraj khan'),
            //subtitle: Text('2.00 pm'),
            title: Text(teachers[index].name),
              subtitle: Text(teachers[index].qualification),
              leading:
                  CircleAvatar(child: Text(teachers[index].age.toString())),
              trailing: Text(teachers[index].experience.toString()),
              onTap: () {
                debugPrint(teachers[index].name);
              },
              splashColor: Colors.amber,
          ),
        );
      },
    ));
  }
}

class TeacherModel {
  final String name;
  final String qualification;
  final String department;
  final int? experience;
  final double? age;

  TeacherModel({
    required this.name,
    required this.qualification,
    required this.department,
    this.experience,
    this.age,
  });
}

List<TeacherModel> teachers = [
  TeacherModel(
    name: 'UMAR',
    qualification: 'BsCs',
    department: 'CS',
    experience: 5,
    age: 23,
  ),
   TeacherModel(
    name: 'HASAN',
    qualification: 'BsCs',
    department: 'CS',
    experience: 5,
    age: 23,
  ),
   TeacherModel(
    name: 'FAROOQ',
    qualification: 'BsCs',
    department: 'CS',
    experience: 5,
    age: 23,
  ),
  
];
