import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

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
          leading: Icon(menuOptions[index].icon, color: Colors.indigo,),
          title: Text(menuOptions[index].name),
          onTap: () {
            // final route = MaterialPageRoute(builder: (context) => Listview1Screen());
            // Navigator.push(context, route);
            Navigator.pushNamed(context, menuOptions[index].route);
          },
        ),
        separatorBuilder: (_, _) => const Divider(),
        itemCount: menuOptions.length,
      ),
    );
  }
}
