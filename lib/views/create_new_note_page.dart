import 'package:flutter/material.dart';
import 'package:notes_app/widgets/save_note_button.dart';
import 'package:notes_app/widgets/text_field.dart';

class CreateNewNotePage extends StatelessWidget {
  CreateNewNotePage({super.key});

  static const id = 'create_new_note_page';

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  String? title;
  String? description;

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
              title = value;
            },
          ),
          CustomTextField(
            labelText: 'Note Description',
            keyboardType: TextInputType.multiline,
            onchanged: (value) {
              description = value;
            },
          ),
          const SizedBox(height: 50),
        ]),
      ),
    );
  }
}

