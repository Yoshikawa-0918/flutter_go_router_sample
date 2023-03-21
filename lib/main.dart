import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter go_router sample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Home Screen',
            ),
            const Text(
              'Please press any button',
            ),
            //トップルートの画面に遷移する
            ElevatedButton(
              onPressed: () {},
              child: const Text('Go to the screen with toproute'),
            ),
            //サブルート付きの画面に遷移する
            ElevatedButton(
              onPressed: () {},
              child: const Text('Go to the screen with subroutes'),
            ),
          ],
        ),
      ),
    );
  }
}
