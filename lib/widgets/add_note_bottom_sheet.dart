import 'package:flutter/material.dart';
import 'package:notes_app/widgets/save_note_button.dart';
import 'package:notes_app/widgets/text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        CustomTextField(
          labelText: 'Note Title',
          onchanged: (value) {},
        ),
        CustomTextField(
          labelText: 'Note Description',
          keyboardType: TextInputType.multiline,
          onchanged: (value) {},
        ),
        const SizedBox(height: 50),
        SaveNoteButton(
          onTap: () {
            Navigator.pop(context);
          },
        )
      ]),
    );
  }
}
