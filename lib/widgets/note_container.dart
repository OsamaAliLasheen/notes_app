import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomNoteContainer extends StatelessWidget {
  CustomNoteContainer({super.key, required this.color, required this.onDelete});
  final date = DateFormat("MMM d, y").format(DateTime.now());

  final Color color;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        width: 400,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
              title: const Text(
                'note.titlenote',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  'note.description',
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              trailing: IconButton(
                iconSize: 50,
                onPressed: onDelete,
                icon: const Icon(Icons.delete),
              )),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Text(date.toString()),
          ),
        ]),
      ),
    );
  }
}
//  Padding(
//           padding: const EdgeInsets.all(24.0),
//           child: Row(
//             children: [
//               const Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'note.title',
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                       style:
//                           TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 12),
//                     Text(
//                       'note.description',
//                       style: TextStyle(fontSize: 20),
//                       maxLines: 4,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 width: 20,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   IconButton(
//                     iconSize: 50,
//                     onPressed: onDelete,
//                     icon: const Icon(Icons.delete),
//                   ),
//                   Text(date.toString()),
//                 ],
//               ),
//             ],
//           ),
//         )