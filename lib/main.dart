import 'package:flutter/material.dart';
import 'package:notes_app/screens/create_new_note_page.dart';
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
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff3E4143),
          titleTextStyle: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        scaffoldBackgroundColor: const Color(0xff3E4143),
      ),
      routes: {
        HomePage.id: (context) => HomePage(),
        CreateNewNotePage.id: (context) => CreateNewNotePage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
