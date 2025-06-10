import 'package:flutter/material.dart';

class CibilScoreScreen extends StatefulWidget {
  const CibilScoreScreen({super.key});

  @override
  State<CibilScoreScreen> createState() => _CibilScoreScreenState();
}

class _CibilScoreScreenState extends State<CibilScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CIBIL Score')),
      body: const Center(child: Text('Welcome to the CIBIL Score Screen!')),
    );
  }
}
