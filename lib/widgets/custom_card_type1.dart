import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
            ),
            title: Text('Title'),
            subtitle: Text(
              'Aliquip ad reprehenderit tempor sunt voluptate. Excepteur officia cupidatat consequat nostrud deserunt voluptate. Aliqua exercitation sint laborum dolore ea officia.',
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancel')),
                TextButton(onPressed: () {}, child: const Text('Ok')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
