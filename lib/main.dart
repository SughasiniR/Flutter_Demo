import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:date_time/date_time.dart';
import 'package:flutter/widgets.dart';
import 'Task/task_NewPage.dart';
import 'Task/searchbar.dart';

class TaskItemNewPage {
  final String title;
  final String description;
  final int itemNumber;
  const TaskItemNewPage(
    this.itemNumber,
    this.title,
    this.description,
  );
}

// class TaskItem {
//   final int numberItem;
//   const TaskItem(
//     this.numberItem,
//   );
// }

void main() {
  runApp(MaterialApp(
    title: 'Pass data item',
    home: MyHomePage(
      items: List.generate(
        20,
        (i) => TaskItemNewPage(
          ++i,
          "Item $i",
          'Item $i subtitle $i',
        ),
      ),
      //items1: List<String>.generate(20, (j) => 'item $j'),
    ),
    routes: {
      '/searchbar1': (context) => const SearchBar2(),
      //'/cameraIcon': (content) => CameraOpen(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
