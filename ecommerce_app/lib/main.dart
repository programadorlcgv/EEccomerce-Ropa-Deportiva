import 'package:ecommerce_app/core/configs/theme/app_theme.dart';
import 'package:ecommerce_app/presentation/splash/pages/splash.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tienda de Ropa Deportiva',
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      home: const SplashPage()
      
    );
  }
}