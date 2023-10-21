import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:siska_flutter/ui_screens/state_management/coba.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Siska'),
        actions: [
          ElevatedButton(
            onPressed: () {
              html.window.open('https://github.com/Siputsss/siska-flutter', 'siska-flutter');
            },
            child: const Text('github'),
          )
        ],
      ),
      body: Coba(),
    );
  }
}
