import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    var itemList = makeItems();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('A-1'),
      ),
      body: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, i) => itemList[i],
      ),
    );
  }
}

List<Widget> makeItems() {
  List<Widget> retVal = [
    const Card(
        child: ListTile(
      title: Text('1R'),
    )),
    const Card(
        child: ListTile(
      title: Text('齋藤(高校) - 佐藤(高校)'),
    )),
    const Padding(padding: EdgeInsets.all(10)),
    const Card(
        child: ListTile(
      title: Text('2R'),
    )),
    const Card(
        child: ListTile(
      title: Text('高橋(高校) - 山田(高校)'),
    )),
    const Padding(padding: EdgeInsets.all(10)),
    const Card(
        child: ListTile(
      title: Text('Quarterfinal'),
    )),
    const Padding(padding: EdgeInsets.all(10)),
    const Card(
        child: ListTile(
      title: Text('Semifinal'),
    )),
    const Padding(padding: EdgeInsets.all(10)),
    const Card(
        child: ListTile(
      title: Text('Final'),
    )),
  ];
  return retVal;
}
