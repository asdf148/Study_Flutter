import 'package:flutter/material.dart';

class CountNumber extends StatefulWidget {
  const CountNumber({Key? key}) : super(key: key);

  @override
  State<CountNumber> createState() => _CountNumberState();
}

class _CountNumberState extends State<CountNumber> {
  int _count = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count Number'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('You have pressed the button $_count time.'),
          ),
          TextButton(
            onPressed: () => setState(() => _count++),
            child: const Text('Count One'),
          )
        ],
      ),
      backgroundColor: Colors.deepPurpleAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
