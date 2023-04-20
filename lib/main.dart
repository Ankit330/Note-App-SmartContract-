import 'package:flutter/material.dart';
import 'package:notes_app/notes_services.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => NoteServices(), child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
