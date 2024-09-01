import 'package:flutter/material.dart';

class myHeaderDrawer extends StatefulWidget {
  const myHeaderDrawer({super.key});

  @override
  State<myHeaderDrawer> createState() => _myHeaderDrawerState();
}

class _myHeaderDrawerState extends State<myHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
      color: Colors.greenAccent[200],
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('SKILL UP HERE', style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold)),
          Text('TAP HERE', style: TextStyle(color: Colors.white, fontSize: 14),)
        ],
      ),
    );
  }
}
