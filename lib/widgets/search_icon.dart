import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
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
      ),
    );
  }
}
