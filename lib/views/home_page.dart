import 'package:flutter/material.dart';
import 'package:notes_app/views/create_new_note_page.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/save_note_button.dart';
import 'package:notes_app/widgets/search_icon.dart';
import 'package:notes_app/widgets/note_container.dart';
import 'package:notes_app/widgets/text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const id = '/homePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Color> baseColors = [
    Colors.amber,
    Colors.red,
    Colors.purple,
    Colors.green,
    Colors.blue
  ];

  List<Color> colors = [];

  void addContainer() {
    colors.add(baseColors[colors.length % baseColors.length]);
  }

  void deleteContainer(int index) {
    setState(() {
      colors.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
        actions: const [CustomSearchIcon()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            ListView.builder(
              itemCount: colors.length,
              itemBuilder: (context, index) {
                return CustomNoteContainer(
                  color: colors[index],
                  onDelete: () => deleteContainer(index),
                );
              },
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: Colors.greenAccent,
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.black54,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      context: context,
                      builder: (context) {
                        return const AddNoteBottomSheet();
                      });
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
