import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_riverpod/home_screen.dart';

void main() {
  runApp(
    ProviderScope(
      child: WeatherAppRiverpod(),
    ),
  );
}

class WeatherAppRiverpod extends StatelessWidget {
  const WeatherAppRiverpod({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
