import 'package:flutter/material.dart';
import 'package:provider_counter/pages/page1.dart';
import 'package:provider_counter/pages/page3.dart';
import 'package:provider_counter/pages/pagw2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  
  final List<Widget> _widgetOptions = <Widget>[
    const Page1(),
    const Page2(),
    const Page3(),
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola Mundo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '1'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '2'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '3'),
        ],
        currentIndex: _selectedIndex,
        onTap: (int value){
          setState(() {
            _selectedIndex = value;
          });
        },
      ),  
    );
  }
}
