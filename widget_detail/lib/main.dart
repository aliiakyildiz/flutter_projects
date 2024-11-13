import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:widget_detail/constants/colors.dart';

void main() {
  runApp(const WidgetDetail());
}

// class WidgetDetail extends StatelessWidget {
//   const WidgetDetail({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("data"),
//           centerTitle: true,
//           backgroundColor: Colors.cyan,
//           leading: const Text("Menu"),
//         ),
//         body: const Center(
//           child: Text("Hello Word"),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           child: const Text("+"),
//         ),
//       ),
//     );
//   }
// }

class WidgetDetail extends StatefulWidget {
  const WidgetDetail({super.key});

  @override
  State<WidgetDetail> createState() => _WidgetDetailState();
}

class _WidgetDetailState extends State<WidgetDetail> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello Word"),
          centerTitle: true,
          backgroundColor: HexColor(primaryColor),
          leading: const Text("Menu"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(value.toString()),
              Text(
                "Body",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 10,
                  color: HexColor(secondaryColor),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              value += 1;
            });
          },
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
                setState(() {
                  // --> Değişikliklerin ekrana yansımasını sağlar.
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
