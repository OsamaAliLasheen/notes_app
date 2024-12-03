import 'package:flutter/material.dart';

class CustomSearchButton extends StatelessWidget {
  const CustomSearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        color: Colors.grey[800],
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.search,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
