import 'package:flutter/material.dart';
import 'result.dart';
import 'Orderofplay.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _screen = 0;

  final List<Widget> _pageList = [
    const Navigator2test(),
    Result(),
  ];

  List<BottomNavigationBarItem> myBottomNavBarItems() {
    return [
      const BottomNavigationBarItem(
        icon: Icon(Icons.safety_divider),
        label: 'Order of play',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.sports_tennis),
        label: 'Result',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_screen],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        currentIndex: _screen,
        onTap: (index) {
          setState(() {
            _screen = index;
          });
        },
        items: myBottomNavBarItems(),
      ),
    );
  }
}
