import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  final List<String> entries = <String>['A', 'B', 'C'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: false,
              //stretch: true,
              //floating: true,
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text(
                  'Task',
                  //textAlign: TextAlign.start,
                ),
                background: Image.asset(
                  'images/blue_box_with_shadow.png',
                  //fit: BoxFit.cover,
                ),
                stretchModes: <StretchMode>[
                  StretchMode.zoomBackground,
                ], // Image asset
              ), // FlexibleSpaceBar
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  const Text("I'm dedicating every day to you"),
                  const Text('Domestic life was never quite my style'),
                  const Text('When you smile, you knock me out, I fall apart'),
                  const Text('And I thought I was so smart'),
                ],
              ),
            ),
          ],
        ),
      ),
    ); // Scaffold
  }
}
