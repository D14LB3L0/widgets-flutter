import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(
              'https://cdn11.bigcommerce.com/s-x49po/images/stencil/1500x1500/products/88631/250661/1665576857580_Jungle_House__25247.1687002130.jpg?c=2&imbypass=on',
            ),
            placeholder: AssetImage('assets/jar-loading.gif'),
          ),
        ],
      ),
    );
  }
}
