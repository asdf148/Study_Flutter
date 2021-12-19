import 'package:flutter/material.dart';
import 'package:study_flutter/screens/countNumber.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:study_flutter/screens/mainPage.dart';
import 'package:study_flutter/screens/vocaList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/vocaList': (context) => const RandomWords(),
        '/countNumber': (context) => const CountNumber(),
      },
    );
  }
}



// class VocaListScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Voca List'),
//       ),
//       body: Center(
//         child: RandomWords(),
//       ),
//     )
//   }
// }

