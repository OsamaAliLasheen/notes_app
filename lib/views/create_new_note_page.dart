import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/text_field.dart';

class CreateNewNotePage extends StatelessWidget {
  CreateNewNotePage({super.key});

  static const id = 'create_new_note_page';

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Note'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          CustomTextField(
            labelText: 'Note Title',
            onchanged: (value) {
              titleController.text = value;
            },
          ),
          CustomTextField(
            labelText: 'Note Description',
            keyboardType: TextInputType.multiline,
            onchanged: (value) {
              descriptionController.text = value;
            },
          ),
          const SizedBox(height: 50),
          GestureDetector(
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
          )
        ]),
      ),
    );
  }
}
