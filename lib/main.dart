import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/conter.dart';
import 'screans/Home.dart';
void main() {
  
  runApp(
    ChangeNotifierProvider(
      create: (_)=> CounterProvider(),
    child: const MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provaider',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
