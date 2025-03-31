import 'package:flutter/material.dart';
import 'home_page.dart';
import 'learning_page01.dart';

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
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
        '/learning01': (context) => const LearningPage01(),
        // '/learning02': (context) => const LearningPage02(),
      },
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: FirstPage(),
    );
  }
}

// class FirstPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Flutterの練習帳1 ver1.002')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Hello Flutter! test.0001',
//               style: TextStyle(fontSize: 24),
//             ),
//             const SizedBox(height: 20),

//             ElevatedButton(
//               child: const Text('2ページ目へ'),
//               onPressed: () {
//                 // Debugはprint()で確認する
//                 print('2ページ目へ移動');
//                 debugPrint('デバッグ情報: 2ページ目に遷移します');
//                 assert(() {
//                   print('assert: 2ページ目への遷移をデバッグ中');
//                   return true;
//                 }());

//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => SecondPage()),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Flutterの練習帳2')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('こちらは2ページ目です。', style: TextStyle(fontSize: 24)),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               child: const Text('1ページ目に戻る'),
//               onPressed: () {
//                 // Debugはprint()で確認する
//                 print('1ページ目へ移動');
//                 debugPrint('デバッグ情報: 1ページ目に遷移します');
//                 assert(() {
//                   print('assert: 1ページ目への遷移をデバッグ中');
//                   return true;
//                 }());

//                 // Navigator.popを使って前の画面に戻ります
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('You have pushed the button this many times:'),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

// class FirstPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('最初のページ')),
//       body: Center(
//         child: Text('Hello Flutter!', style: TextStyle(fontSize: 24)),
//       ),
//     );
//   }
// }
