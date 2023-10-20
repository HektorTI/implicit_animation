import 'package:flutter/material.dart';
import 'package:implicit_animation/new_page.dart';
import 'package:implicit_animation/widget/gesture_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _navigateToNewPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const NewPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(158, 75, 25, 193),
        title: const Text(
          'Implicit_animation',
          style:
              TextStyle(color: Color.fromARGB(255, 83, 69, 69), fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 36, 34, 36),
                Color.fromARGB(255, 88, 88, 88)
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const MyWidget(alignment: MainAxisAlignment.end),
              const MyWidget(alignment: MainAxisAlignment.center),
              const MyWidget(alignment: MainAxisAlignment.start),
              const MyWidget(alignment: MainAxisAlignment.end),
              const MyWidget(alignment: MainAxisAlignment.start),
              const MyWidget(alignment: MainAxisAlignment.end),
              SafeArea(
                child: ElevatedButton(
                  onPressed: () {
                    _navigateToNewPage(context);
                  },
                  child: const Text('Ir para Nova Página'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
