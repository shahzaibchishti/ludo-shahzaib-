import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const LudoApp());
}

class LudoApp extends StatelessWidget {
  const LudoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ludo Game',
      home: const LudoHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LudoHomePage extends StatefulWidget {
  const LudoHomePage({super.key});
  @override
  State<LudoHomePage> createState() => _LudoHomePageState();
}

class _LudoHomePageState extends State<LudoHomePage> {
  int diceNumber = 1;
  final Random random = Random();
  void rollDice() {
    setState(() {
      diceNumber = random.nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ludo Game - شاہزیب جی'), backgroundColor: Colors.red),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text('Dice Number:', style: TextStyle(fontSize: 24)),
          const SizedBox(height: 20),
          Text('$diceNumber', style: const TextStyle(fontSize: 100, fontWeight: FontWeight.bold)),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20), backgroundColor: Colors.red),
            child: const Text('Roll Dice', style: TextStyle(fontSize: 20)),
          ),
        ]),
      ),
    );
  }
}
