import 'package:flutter/material.dart';
import 'package:tmdb_example/router/router.gr.dart';
import 'package:tmdb_example/utilities/get_it_register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  getItRegistry.doRegister();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
