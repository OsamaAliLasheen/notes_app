import 'package:flutter/material.dart';
import 'package:notes_app/screens/home_page.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black87,
          )),
      routes: {
        HomePage.id: (context) => HomePage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
