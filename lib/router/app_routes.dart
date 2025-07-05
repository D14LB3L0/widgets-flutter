import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/models/menu_option.dart';

class AppRoutes {
  static const initialRoute = 'Home';

  static final menuOptions = <MenuOptions>[
    // MenuOptions(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_outlined),
    MenuOptions(
      route: 'listview1',
      name: 'List View 1',
      screen: const Listview1Screen(),
      icon: Icons.list_alt,
    ),
    MenuOptions(
      route: 'listview2',
      name: 'List View 2',
      screen: const Listview2Screen(),
      icon: Icons.list_alt,
    ),
    MenuOptions(
      route: 'alert',
      name: 'Alert',
      screen: const AlertScreen(),
      icon: Icons.add_alert_outlined,
    ),
    MenuOptions(
      route: 'card',
      name: 'Card',
      screen: const CardScreen(),
      icon: Icons.credit_card,
    ),
    MenuOptions(
      route: 'avatar',
      name: 'Avatar',
      screen: const AvatarScreen(),
      icon: Icons.supervised_user_circle_outlined,
    ),
    MenuOptions(
      route: 'animated',
      name: 'Animated Container',
      screen: const AnimatedScreen(),
      icon: Icons.play_circle_outline_rounded,
    ),
    MenuOptions(
      route: 'input',
      name: 'Text Input',
      screen: const InputsScreen(),
      icon: Icons.input_rounded,
    ),
    MenuOptions(
      route: 'slider',
      name: 'Sliders and Checks',
      screen: const SliderScreen(),
      icon: Icons.slideshow,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
