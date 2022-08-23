import 'package:flutter/material.dart';

class Page8 extends StatelessWidget {
  const Page8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('B-4'),
      ),
      body: const Center(
        child: Text('More Information Here'),
      ),
    );
  }
}