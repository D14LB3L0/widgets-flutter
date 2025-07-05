import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widget card')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://cdn11.bigcommerce.com/s-x49po/images/stencil/1500x1500/products/88631/250661/1665576857580_Jungle_House__25247.1687002130.jpg?c=2&imbypass=on', name: 'A beautiful landscape',),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://images.unsplash.com/photo-1692264438297-e1e38a867d02?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhdXRpZnVsJTIwbGFuZHNjYXBlfGVufDB8fDB8fHww',),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://rosshillart.com/cdn/shop/articles/R._Delino_Landscape_art_-_Rosshillart.com_1100x.jpg?v=1703181542',),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}


