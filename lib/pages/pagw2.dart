import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/provider/conter.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Page 2'),
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