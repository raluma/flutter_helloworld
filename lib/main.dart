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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> { 
  int _counter = 0;

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
        title: const Text("Hello 3º DAM - PGL"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 60.0),
              child: 
                SizedBox(
                  height: 200,
                  child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Starred:",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          "$_counter",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const Icon(Icons.star, color: Colors.yellow, size: 60,)
                      ]
                    )
                )
            ),
            SizedBox(
              width: 200,
              child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                  [
                    MaterialButton(
                      onPressed: _decreaseCounter, 
                      color: const Color(0xffF2F2FC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(Icons.thumb_down, color: Color(0xff0259C2))
                    ),
                    MaterialButton(
                      onPressed: _increaseCounter, 
                      color: const Color(0xffF2F2FC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(Icons.thumb_up, color: Color(0xff0259C2))
                    )
                  ]
                )
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
