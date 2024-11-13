import 'package:flutter/material.dart';

void main() {
  runApp(const Test());
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

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int value = 0;

  testMethod() {
    value += 1;
    print("Tıklandı $value");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value.toString()),
            ElevatedButton(
              onPressed: () {
                setState(() { // --> Değişikliklerin ekrana yansımasını sağlar.
                  testMethod();
                });
              },
              child: const Text("+"),
            ),
          ],
        )),
      ),
    );
  }
}
