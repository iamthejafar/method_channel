import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final channel = const MethodChannel("toast");

  _showToast() {
    channel.invokeMethod("showToast", {"message" : "Successfully ! toast using method channel"});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Method Channel"),
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: _showToast, child: const Text("Show Toast"))),
      ),
    );
  }
}
