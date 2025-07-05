import 'package:fl_components/themes/app_theme_light.dart';
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
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(menuOptions[index].icon, color: AppThemeLight.primary),
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
