import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

class SaveNoteButton extends StatelessWidget {
  const SaveNoteButton({
    super.key,
    required this.titleController,
    required this.descriptionController,
  });

  final TextEditingController titleController;
  final TextEditingController descriptionController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (titleController.text.isNotEmpty &&
            descriptionController.text.isNotEmpty) {
          final newNote = NoteModel(
              title: titleController.text,
              description: descriptionController.text,
              date: DateTime.now().toString());
          Navigator.pop(context, newNote);
        }
      },
      child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
              child: Text(
            'Save Note',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ))),
    );
  }
}
