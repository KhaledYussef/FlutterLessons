import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = "ff0000";
    // int myColor = 0xff;
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Home Page'),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        textBaseline: TextBaseline.alphabetic,
        textDirection: TextDirection.rtl,
        // verticalDirection: VerticalDirection.up,
        children: [
          const Text('My Home Page', style: TextStyle(color: Colors.amber)),
          // Expanded(child: RedBox(),),
          // Expanded(child: BlueBox()),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RedBox(),

              BlueBox(),
              // const SizedBox(height: double.infinity),
            ],
          ),

          Spacer(),
          Image.network('https://pal4it.net/images/logo.png'),
          Spacer(),
          // Image.memory(bytes)
        ],
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}

class RedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(),
      ),
    );
  }
}
