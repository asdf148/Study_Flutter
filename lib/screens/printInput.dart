import 'package:flutter/material.dart';

class PrintInput extends StatefulWidget{
  const PrintInput({Key? key}) : super(key: key);

  @override
  PrintInputState createState() => PrintInputState();
}

class PrintInputState extends State<PrintInput> {
  String _input = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Print Input'),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100, bottom: 50),
                child: Text(
                  _input,
                  style: const TextStyle(color: Colors.cyan, fontSize: 20.5, ),
                ),
              ),
              TextField(
                onChanged: (text) {
                  setState(() {
                    _input = text;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Input',
                  hintText: 'typing any context!'
                ),
                autofocus: true,
              )
            ]
          ),
        ),
      )
    );
  }
}