import 'package:flutter/material.dart';
import 'package:guesstheword/routes/app_pages.dart';
import 'package:qlevar_router/qlevar_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = QRouterDelegate(
      AppRoutes.routes(),
      withWebBar: true,
    );
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: QRouteInformationParser(),
      routerDelegate: router,
    );
  }
}
