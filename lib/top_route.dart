import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopRoute extends StatelessWidget {
  const TopRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('toproute screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('This is toproute screen'),
            ElevatedButton(
              onPressed: () {
                //HomeScreenに遷移する
                context.go('/');
              },
              child: const Text('Go back HomeScreen'),
            ),
          ],
        ),
      ),
    );
  }
}
