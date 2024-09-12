import 'package:flutter/material.dart';
import 'package:myapp/views/home_screen.dart';

void main() {
  runApp(const CoinTicker());
}

class CoinTicker extends StatelessWidget {
  const CoinTicker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
