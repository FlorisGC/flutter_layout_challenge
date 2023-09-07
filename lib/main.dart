import 'package:flutter/material.dart';
import 'package:flutter_layout_challenge/view/pages/page1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
        home: ProjectsPage(),
      );
}
