import 'package:flutter/material.dart';
import 'package:fruit_app/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const FruitApp());
}

class FruitApp extends StatelessWidget {
  const FruitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
