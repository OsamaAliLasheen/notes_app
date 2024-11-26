import 'package:flutter/material.dart';
import 'package:notes_app/screens/create_new_note_page.dart';
import 'package:notes_app/widgets/note_container.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  static const id = '/homePage';

  List<Color> colors = [
    Colors.amber,
    Colors.red,
    Colors.purple,
    Colors.green,
    Colors.blue
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notes',
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            ListView.builder(
              itemCount: colors.length,
              itemBuilder: (context, index) {
                return CustomNoteContainer(color: colors[index]);
              },
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                    backgroundColor: Colors.greenAccent,
                    onPressed: () {
                      Navigator.pushNamed(context, CreateNewNotePage.id);
                    },
                    child: const Icon(Icons.add)))
          ],
        ),
      ),
    );
  }
}
