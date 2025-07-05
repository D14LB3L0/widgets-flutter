import 'package:fl_components/themes/app_theme_light.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sliders and Checks')),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppThemeLight.primary,
            value: _sliderValue,
            onChanged: _sliderEnabled
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),

          // Checkbox(
          //   value: _sliderEnabled,
          //   onChanged: (value) {
          //     _sliderEnabled = value ?? true;
          //     setState(() {});
          //   },
          // ),
          CheckboxListTile.adaptive(
            activeColor: AppThemeLight.primary,
            title: const Text('Enabled Slider', style: TextStyle(fontSize: 20)),
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            },
          ),

          // Switch(
          //   value: _sliderEnabled,
          //   onChanged: (value) {
          //     _sliderEnabled = value;
          //     setState(() {});
          //   },
          // ),
          SwitchListTile.adaptive(
            value: _sliderEnabled,
            title: const Text('Enabled Slider', style: TextStyle(fontSize: 20)),
            onChanged: (value) {
              _sliderEnabled = value;
              setState(() {});
            },
          ),

          AboutListTile(),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                  'https://i.pinimg.com/1200x/22/a2/fc/22a2fc27dbee5449bc905de4618e26dd.jpg',
                ),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),

          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
