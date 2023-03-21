import 'package:flutter/material.dart';
import 'package:flutter_go_router_sample/sub_routes.dart';
import 'package:flutter_go_router_sample/top_route.dart';
import 'package:go_router/go_router.dart';

//go_routerはWeb向きのパッケージなのでモバイルアプリにはあまり使わないかも...

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  //最初に表示するパスの定義
  routes: <RouteBase>[
    GoRoute(
      //HomeScreenのパス
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          //SubRoute1のパス
          path: 'subroute1',
          builder: (BuildContext context, GoRouterState state) {
            return const SubRoute1();
          },
          routes: <RouteBase>[
            GoRoute(
              //SubRoute2のパス
              path: 'subroute2',
              builder: (BuildContext context, GoRouterState state) {
                return const SubRoute2();
              },
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      //TopRouteのパス
      path: '/toproute',
      builder: (BuildContext context, GoRouterState state) {
        return const TopRoute();
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      //右上のDEBUG印を表示しない
      debugShowCheckedModeBanner: false,
      //ここのプロパティはgo_routerのバージョンによって変わるので要注意
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
              onPressed: () {
                context.go('/toproute');
              },
              child: const Text('Go to the screen with toproute'),
            ),
            //サブルート付きの画面に遷移する
            ElevatedButton(
              onPressed: () {
                context.go('/subroute1');
              },
              child: const Text('Go to the screen with subroutes'),
            ),
          ],
        ),
      ),
    );
  }
}
