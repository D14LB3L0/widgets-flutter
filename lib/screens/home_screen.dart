import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Components in Flutter'),
        backgroundColor: Colors.indigo,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.normal,
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.access_time_outlined),
          title: Text('root name'),
          onTap: () {
            // final route = MaterialPageRoute(builder: (context) => Listview1Screen());
            // Navigator.push(context, route);

            Navigator.pushNamed(context, 'card');
          },
        ),
        separatorBuilder: (_, _) => const Divider(),
        itemCount: 10,
      ),
    );
  }
}
