import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NoteContainer extends StatelessWidget {
  NoteContainer({super.key});
  final date = DateFormat("MMM d, y").format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 230,
        width: 400,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Flutter Notes',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'write your note description here baleez write your note description here baleez write your note description here baleez write your note description here baleez',
                      style: TextStyle(fontSize: 20),
                      maxLines: 4, 
                      overflow: TextOverflow
                          .ellipsis, 
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    iconSize: 50,
                    onPressed: () {},
                    icon: const Icon(Icons.delete),
                  ),
                  Text(date),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
