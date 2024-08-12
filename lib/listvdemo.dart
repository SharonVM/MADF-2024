import 'package:flutter/material.dart';

class ListVdemo extends StatefulWidget {
  const ListVdemo({super.key});

  @override
  State<ListVdemo> createState() => _demoState();
}

class _demoState extends State<ListVdemo> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: <Widget>[
        CircleAvatar(maxRadius: 50,
          backgroundColor: Colors.black,
          child: Icon(Icons.person, color: Colors.white, size: 50),),
        Center(child: Text('Sharon Mohtra',
          style: TextStyle(
            fontSize: 50,),),),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          style: TextStyle(fontSize: 20,),),
      ],
    );
  }
}
