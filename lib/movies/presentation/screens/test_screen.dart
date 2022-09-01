import 'package:flutter/material.dart';
import 'package:movies_app_clean_architecture/movies/presentation/screens/movies_screen.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text('Go To Movie Screen'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MoviesScreen()));
          },
        ),
      ),
    );
  }
}
