import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Page1.dart';
import 'Page2.dart';
import 'Page3.dart';
import 'Page4.dart';
import 'Page5.dart';
import 'Page6.dart';
import 'Page7.dart';
import 'Page8.dart';

class Navigator2test extends StatefulWidget {
  const Navigator2test({Key? key}) : super(key: key);

  @override
  State<Navigator2test> createState() => _Navigator2testState();
}

class _Navigator2testState extends State<Navigator2test> {
  //表示Pageを管理する状態
  //1ならPage１、２ならPage２といった形で管理する
  int? _buttonId;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Books App',
      //宣言的な画面遷移の管理部分
      //_buttonIdの値によって変化する
      home: Navigator(
        pages: [
          MaterialPage(
            child: MenuPage(
              toPage1: _toPage1,
              toPage2: _toPage2,
              toPage3: _toPage3,
              toPage4: _toPage4,
              toPage5: _toPage5,
              toPage6: _toPage6,
              toPage7: _toPage7,
              toPage8: _toPage8,
            ),
          ),
          if (_buttonId == 1)
            const MaterialPage(
              child: Page1(),
            ),
          if (_buttonId == 2)
            const MaterialPage(
              child: Page2(),
            ),
          if (_buttonId == 3)
            const MaterialPage(
              child: Page3(),
            ),
          if (_buttonId == 4)
            const MaterialPage(
              child: Page4(),
            ),
          if (_buttonId == 5)
            const MaterialPage(
              child: Page5(),
            ),
          if (_buttonId == 6)
            const MaterialPage(
              child: Page6(),
            ),
          if (_buttonId == 7)
            const MaterialPage(
              child: Page7(),
            ),
          if (_buttonId == 8)
            const MaterialPage(
              child: Page8(),
            ),
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }
          setState(() {
            _buttonId = null;
          });
          return true;
        },
      ),
    );
  }

  //ページ遷移のためのコールバック関数
  //管理している状態の数値を変更する
  void _toPage1() {
    setState(() {
      _buttonId = 1;
    });
  }

  void _toPage2() {
    setState(() {
      _buttonId = 2;
    });
  }

  void _toPage3() {
    setState(() {
      _buttonId = 3;
    });
  }

  void _toPage4() {
    setState(() {
      _buttonId = 4;
    });
  }

  void _toPage5() {
    setState(() {
      _buttonId = 5;
    });
  }

  void _toPage6() {
    setState(() {
      _buttonId = 6;
    });
  }

  void _toPage7() {
    setState(() {
      _buttonId = 7;
    });
  }

  void _toPage8() {
    setState(() {
      _buttonId = 8;
    });
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({
    Key? key,
    this.toPage1,
    this.toPage2,
    this.toPage3,
    this.toPage4,
    this.toPage5,
    this.toPage6,
    this.toPage7,
    this.toPage8,
  }) : super(key: key);

  //画面遷移を指示するコールバック関数
  //ボタンが押された時に反応する
  final void Function()? toPage1;
  final void Function()? toPage2;
  final void Function()? toPage3;
  final void Function()? toPage4;
  final void Function()? toPage5;
  final void Function()? toPage6;
  final void Function()? toPage7;
  final void Function()? toPage8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('コート一覧'),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('大会ホームページ'),
            onTap: () {
              _openUrl();
            },
          )
        ],
      )),
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: toPage1,
                    child: const Text('A-1'),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      fixedSize: const Size(500, 70),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: toPage2,
                    child: const Text('A-2'),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.all(20),
                      fixedSize: const Size(500, 80),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: toPage3,
                    child: const Text('A-3'),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.all(20),
                      fixedSize: const Size(500, 80),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: toPage4,
                    child: const Text('A-4'),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.all(20),
                      fixedSize: const Size(500, 80),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: toPage5,
                    child: const Text('B-1'),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.all(20),
                      fixedSize: const Size(500, 80),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: toPage6,
                    child: const Text('B-2'),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.all(20),
                      fixedSize: const Size(500, 80),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: toPage7,
                    child: const Text('B-3'),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.all(20),
                      fixedSize: const Size(500, 80),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: toPage8,
                    child: const Text('B-4'),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.all(20),
                      fixedSize: const Size(500, 80),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _openUrl() async {
  const url = 'https://iwanuma-tennis-open.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not Launch $url';
  }
}
