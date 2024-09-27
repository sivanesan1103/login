import 'package:flutter/material.dart';

import 'next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  double height = 10.0;

  TextEditingController controller = TextEditingController(text: "Data Ready");

  @override
  Widget build(BuildContext context) {
    double sHeight = MediaQuery.of(context).size.height;
    double sWidth = MediaQuery.of(context).size.width;
    double rHeight =
        sHeight - (sHeight * 0.04) - MediaQuery.of(context).padding.top;
    return Scaffold(
      // backgroundColor: Colors.red.withOpacity(0.4),
      appBar: AppBar(
        leading: Icon(Icons.add),
        title: Text("data"),
        actions: [Icon(Icons.read_more), Icon(Icons.delete), Icon(Icons.add)],
      ),
      body: Container(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("data"),
              TextField(
                controller: controller,
              ),
              Text("data2"),
              TextField(
                controller: controller,
              ),
              Text("data3"),
              TextField(
                controller: controller,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  // Navigator.pop(context);
                  await Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewPage()));
                  debugPrint("Data Executed");
                  setState(() {
                    controller.text = "Data Updated";
                  });
                },
                child: Text("data"))
          ],
        ),
      ),
    );
  }
}
