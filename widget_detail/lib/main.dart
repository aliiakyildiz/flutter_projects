import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetDetail());
}

class WidgetDetail extends StatelessWidget {
  const WidgetDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("data"),
          centerTitle: true,
          backgroundColor: Colors.cyan,
          leading: const Text("Menu"),
        ),
        body: const Center(
          child: Text("Hello Word"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Text("+"),
        ),
      ),
    );
  }
}
