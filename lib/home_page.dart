// lib/home_page.dart
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('トップページ')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('ここはトップページです。', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Learning Page 01へ'),
              onPressed: () {
                // ルート名を指定して遷移
                Navigator.pushNamed(context, '/learning01');
              },
            ),
          ],
        ),
      ),
    );
  }
}
