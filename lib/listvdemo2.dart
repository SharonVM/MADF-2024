import 'package:flutter/material.dart';

class ListVdemo2 extends StatefulWidget {
  const ListVdemo2({super.key});

  @override
  State<ListVdemo2> createState() => _demoState();
}

class _demoState extends State<ListVdemo2> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, position) {
        return Card(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Name",//position.toString(),
              style: TextStyle(fontSize: 22.0),
            ),),);
      },);
  }



}


