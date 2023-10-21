import 'dart:math';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class Coba extends ReactiveStatelessWidget {
  Coba({
    super.key,
  });
  final count = 0.inj();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Management'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              count.state.toString(),
              textScaleFactor: 3,
            ),
            Text(
              Random().nextInt(100).toString(),
              textScaleFactor: 3,
            ),
            ElevatedButton(
              onPressed: () {
                count.state = count.state + 1;
              },
              child: const Text('tambah'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                count.state = count.state - 1;
              },
              child: const Text('kurang'),
            ),
          ],
        ),
      ),
    );
  }
}
