import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_riverpod/weather_riverpod.dart';
import 'package:weather_app_riverpod/weather_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ref.read(weatherProvider).getGeolocatorPosition().then((value) {
      ref.read(weatherProvider).getCurrentWeather().then((value) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => WeatherScreen(),
          ),
        );
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(color: Colors.orange),
      ),
    );
  }
}
