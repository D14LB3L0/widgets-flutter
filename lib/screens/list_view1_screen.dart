import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy',
  ];

  const Listview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Listview type 1")),
      body: Center(
        child: ListView(
          children: [
            ...options.map(
              (game) => ListTile(
                title: Text(game),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              ),
            )
          ],
        ),
      ),
    );
  }
}
