import 'package:flutter/material.dart';

class Page7 extends StatelessWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('B-3'),
      ),
      body: const Center(
        child: Text('More Information Here'),
      ),
    );
  }
}