import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/save_note_button.dart';
import 'package:notes_app/widgets/text_field.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  String title = '';

  String description = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        CustomTextField(
          labelText: 'Note Title',
          onSubmitted: (value) {
            setState(() {
              title = value;
            });
          },
        ),
        CustomTextField(
          labelText: 'Note Description',
          keyboardType: TextInputType.multiline,
          onSubmitted: (value) {
           setState(() {
              description = value;
           });
          },
        ),
        const SizedBox(height: 50),
        SaveNoteButton(
          onTap: () {
            Navigator.pop(
                context, NoteModel(title: title, description: description));
          },
        )
      ]),
    );
  }
}
