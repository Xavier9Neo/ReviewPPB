import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Pertemuan 3'),
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
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // body: ListView(
      //   children: [
      //   Container(
      //     width: 100,
      //     height: 250,
      //     margin: EdgeInsets.only(bottom: 10),
      //     color: Colors.red,
      //     ),
      //     Container(
      //     width: 100,
      //     height: 250,
      //     margin: EdgeInsets.only(bottom: 10),
      //     color: Colors.blue,
      //     ),
      //     Container(
      //     width: 100,
      //     height: 250,
      //     margin: EdgeInsets.only(bottom: 10),
      //     color: Colors.green,
      //     ),
      //   ],
      // ),
      // body: GridView(
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 3,
      //   ),
      //   children: [
      //   Container(
      //     width: 100,
      //     height: 250,
      //     margin: const EdgeInsets.only(bottom: 10),
      //     color: Colors.red,
      //     ),
      //     Container(
      //     width: 100,
      //     height: 250,
      //     margin: const EdgeInsets.only(bottom: 10),
      //     color: Colors.blue,
      //     ),
      //     Container(
      //     width: 100,
      //     height: 250,
      //     margin: const EdgeInsets.only(bottom: 10),
      //     color: const Color.fromARGB(255, 20, 45, 66),
      //     ),
      //     Container(
      //     width: 100,
      //     height: 250,
      //     margin: const EdgeInsets.only(bottom: 10),
      //     color: const Color.fromARGB(255, 214, 198, 17),
      //     ),
      //   ],
      // ),
      // body: Center(
      //   child: Container(
      //     width: 200,
      //       height: 200,
      //         decoration: const BoxDecoration(
      //           image: DecorationImage(
      //             image: AssetImage("assets/logo.png")
      //       ),
      //     ),
      //   ),
      // ),
      // body: Stack(
      //   children: [
      //     Positioned(
      //       left: 0,
      //       top: 0,
      //       child: Container(
      //         width: 100,
      //         height: 250,
      //         margin: const EdgeInsets.only(bottom: BorderSide.strokeAlignCenter),
      //         color: Colors.red,
      //       ),
      //     ),
      //     Positioned(
      //       left: 50,
      //       top: 100,
      //       child: Container(
      //         width: 100,
      //         height: 250,
      //         margin: const EdgeInsets.only(bottom: BorderSide.strokeAlignCenter),
      //         color: const Color.fromARGB(255, 54, 133, 244),
      //       ),
      //     ),
      //     Positioned(
      //       left: 100,
      //       top: 200,
      //       child: Container(
      //         width: 100,
      //         height: 250,
      //         margin: const EdgeInsets.only(bottom: BorderSide.strokeAlignCenter),
      //         color: const Color.fromARGB(255, 118, 168, 17),
      //       ),
      //     ),
      //   ],
      // ),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 100,
              height: 250,
              margin: const EdgeInsets.only(bottom: 10),
              color: Colors.red,
            ),
          ),
          Positioned(
            left: 50,
            top: 50,
            child: Container(
              width: 100,
              height: 250,
              margin: const EdgeInsets.only(bottom: 10),
              color: Colors.blue,
            ),
          ),
          Positioned(
            left: 100,
            top: 100,
            child: Container(
              width: 100,
              height: 250,
              margin: const EdgeInsets.only(bottom: 10),
              // color: Colors.green,
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/yaya2.jpg"))),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
