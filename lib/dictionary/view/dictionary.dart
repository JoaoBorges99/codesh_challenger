import 'package:flutter/material.dart';

class DictionaryApi extends StatelessWidget {
  const DictionaryApi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dicionario Mobile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
    );
  }
}