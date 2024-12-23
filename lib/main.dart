import 'package:flutter/material.dart';
import 'package:intro/home.dart';
import 'package:intro/shop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 2, 26, 238)),
        useMaterial3: true,
      ),
      // home: MyHome(),
      home: Shop(),
      // home: const MyHomePage(title: 'App flutter'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1000;

  void _incrementCounter() {
    setState(() {
      _counter++; // Increment the counter
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--; // Decrement the counter
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloremque consectetur quos velit error iure nam. Eligendi voluptates, odit quam temporibus dolorum fuga culpa porro rerum consequatur quasi eveniet voluptatem dolor?:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter, // Increment function
            tooltip: 'Increment',
            child: const Icon(Icons.add), // Plus sign icon
          ),
          const SizedBox(width: 10), // Spacing between buttons
          FloatingActionButton(
            onPressed: _decrementCounter, // Decrement function
            tooltip: 'Decrement',
            child: const Icon(Icons.remove), // Minus sign icon
          ),
        ],
      ),
    );
  }
}

