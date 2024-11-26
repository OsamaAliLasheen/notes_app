import 'package:flutter/material.dart';
import 'package:notes_app/widgets/text_field.dart';

class CreateNewNotePage extends StatelessWidget {
  const CreateNewNotePage({super.key});

  static const id = 'create_new_note_page';

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
          ),
          CustomTextField(
            labelText: 'Note Description',
            keyboardType: TextInputType.multiline,
            onchanged: (value) {},
          ),
        ]),
      ),
    );
  }
}
