import 'package:flutter/material.dart';
import 'package:my_flutter_app/main.dart';

class DetailScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  const DetailScreen({super.key, required this.item});

  // Declare a field that holds the Todo.
  final TaskItemNewPage item;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(item.description),
      ),
    );
  }
}

class DetailScreen2 extends StatelessWidget {
  // In the constructor, require a Todo.
  const DetailScreen2({super.key, required this.item});

  // Declare a field that holds the Todo.
  final String item;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text(item),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(item),
      ),
    );
  }
}
