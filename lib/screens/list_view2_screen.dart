import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy',
  ];

  const Listview2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview type 2"),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
        ),
      body: Center(
        child: ListView.separated(
          itemCount: options.length,
          itemBuilder: (_, index) => ListTile(
            title: Text(options[index]),
            trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo),
            onTap: () {},
          ),
          separatorBuilder: (_, _) => Divider(),
        ),
      ),
    );
  }
}
