import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/provider/conter.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Page 1'),
          Text(context.watch<CounterProvider>().counter.toString(),style: TextStyle(fontSize: 24),),
          ElevatedButton(onPressed: (){
           context.read<CounterProvider>().increment();
          }, child: Text('Incrementar'))
          ,
          ElevatedButton(onPressed: (){
           context.read<CounterProvider>().decrement();
          }, child: Text('Decrementar'))
        ],
      ),
    );
  }
}