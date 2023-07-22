import 'package:flutter/material.dart';
import 'package:movies_app_clean_architecture/core/services/sevices_locator.dart';
import 'package:movies_app_clean_architecture/movies/presentation/screens/movies_screen.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      // themeMode: ThemeMode.dark,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: Colors.grey.shade900),
      home: const MoviesScreen(),
    );
  }
}
