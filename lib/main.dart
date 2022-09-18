import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedButton = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedButton = 0;
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  color: Colors.red,
                  child: selectedButton == 0
                      ? const Center(child: Text('selected'))
                      : null,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedButton = 1;
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  color: Colors.green,
                  child: selectedButton == 1
                      ? const Center(child: Text('selected'))
                      : null,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedButton = 2;
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  color: Colors.blue,
                  child: selectedButton == 2
                      ? const Center(child: Text('selected'))
                      : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container newMethod() {
    return Container(
      height: 60,
      width: 60,
      color: Colors.red,
    );
  }
}
