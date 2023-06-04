import 'package:flutter/material.dart';

import 'pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      home: Builder(builder: (context) {
        return Scaffold(
          body: Center(
            child: OutlinedButton(
              child: const Text('Start'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const HomePage()),
              ),
            ),
          ),
        );
      }),
    );
  }
}
