import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.labelText,
      this.onSubmitted,
      this.keyboardType,
      this.contentPadding});

  final String labelText;
  final Function(String)? onSubmitted;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        style: const TextStyle(color: Colors.greenAccent),
        keyboardType: keyboardType,
        onSubmitted: onSubmitted,
        minLines: 1,
        maxLines: 9,
        decoration: InputDecoration(
            contentPadding: contentPadding,
            labelText: labelText,
            labelStyle: const TextStyle(color: Colors.greenAccent),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.greenAccent),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.greenAccent),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            )),
      ),
    );
  }
}
