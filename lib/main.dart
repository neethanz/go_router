import 'package:flutter/material.dart';
import 'package:go_route/routes/app_route_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser:
          AppRouter.returnRouter(true).routeInformationParser,
      routerDelegate: AppRouter.returnRouter(true).routerDelegate,
    );
  }
}
