import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World', 
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffADC6FF))
      ),
      home: const MyHomePage(title: 'Hello 3º DAM - PGL'),
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
  int _counter = 20;

  void _decreaseCounter() {
    setState(() {
      _counter--;
    });
  }

  void _increaseCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Starred:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Icon(Icons.star, color: Colors.yellow),
            ElevatedButton(
              onPressed: _decreaseCounter, 
              child: const Icon(Icons.thumb_down)
            ),
            ElevatedButton(
              onPressed: _increaseCounter, 
              child: const Icon(Icons.thumb_up)
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _resetCounter,
        tooltip: 'Reset',
        backgroundColor: const Color(0xffD8E1FE),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Icon(Icons.restart_alt, color: Colors.black,),
      ),
    );
  }
}
