import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Nodejs server test"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              final response = 
              await http.get(Uri.parse('http://192.168.200.11:3000/api/data'));
              print('Response from Nodejs: ${response.body}');
            },
            child: Text('Connect to Nodejs'),
          ),
        )
      )
    );
  }
}