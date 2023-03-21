import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SubRoute1 extends StatelessWidget {
  const SubRoute1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('subroute1 screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('This is subroute screen1'),
            ElevatedButton(
              onPressed: () {
                //SubRoute2に遷移する
                context.go('/subroute1/subroute2');
              },
              child: const Text('Go to subroute screen2'),
            ),
          ],
        ),
      ),
    );
  }
}

class SubRoute2 extends StatelessWidget {
  const SubRoute2({super.key});

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
            const Text('This is subroutes screen2'),
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
