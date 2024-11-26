import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.labelText,
      this.onchanged,
      this.keyboardType,
      this.contentPadding});

  final String labelText;
  Function(String)? onchanged;
  TextInputType? keyboardType;
  EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        keyboardType: keyboardType,
        onChanged: onchanged,
        minLines: 1,
        maxLines: 9,
        decoration: InputDecoration(
            contentPadding: contentPadding,
            labelText: labelText,
            labelStyle: const TextStyle(color: Colors.white),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            )),
      ),
    );
  }
}
