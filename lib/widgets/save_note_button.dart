import 'package:flutter/material.dart';

class SaveNoteButton extends StatelessWidget {
  const SaveNoteButton({
    super.key, required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
