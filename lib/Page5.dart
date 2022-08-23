import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('B-1'),
      ),
      body: const Center(
        child: Text('More Information Here'),
      ),
    );
  }
}