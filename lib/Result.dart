import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('試合結果'),
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('大会ホームページ'),
            onTap: () {
              _openUrl();
            },
          )
        ],
      )),
      body: Center(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Icon(
                Icons.visibility_off_outlined,
                size: 25),
              const Text(
                  '                      Sorry...\n The screen is being updated...',
                  style: TextStyle(fontSize: 15.0)),
            ],
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