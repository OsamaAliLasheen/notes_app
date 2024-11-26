import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_container.dart';

class HomePage extends StatelessWidget {
 const HomePage({super.key});
  static const id = '/homePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Notes',
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: ListView(
            children: [NoteContainer(), NoteContainer(), NoteContainer()]));
  }
}
