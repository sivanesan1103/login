import 'package:flutter/material.dart';

import 'main.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            },
            child: Text("Go Back")),
      ),
    );
  }
}
