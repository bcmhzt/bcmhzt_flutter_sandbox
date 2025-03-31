// lib/learning_page01.dart
import 'package:flutter/material.dart';

class LearningPage01 extends StatelessWidget {
  const LearningPage01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Learning Page 01')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'これはLearning Page 01です。',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Learning Page 02へ'),
              onPressed: () {
                Navigator.pushNamed(context, '/learning02');
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('トップページに戻る'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
