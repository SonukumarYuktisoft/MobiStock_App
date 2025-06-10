import 'package:flutter/material.dart';

class SpinAndWinScreen extends StatefulWidget {
  const SpinAndWinScreen({super.key});

  @override
  State<SpinAndWinScreen> createState() => _SpinAndWinScreenState();
}

class _SpinAndWinScreenState extends State<SpinAndWinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spin and Win'),
      ),
      body: const Center(
        child: Text('Welcome to the Spin and Win Screen!'),
      ),
    );
  }
}