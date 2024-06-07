import 'package:flutter/material.dart';
import 'package:institute_imat/forgotpass.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    home: TabbarEx(),
    debugShowCheckedModeBanner: false,
  ));
}

class TabbarEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: const Text(""),
            actions: const [],
            bottom: const TabBar(tabs: [
              Column(
                children: [
                  Text("Media")
                ],
              ),
              Column(
                children: [
                  Text("Language")
                ],
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              LoginPage(),
              forgotpass(),
            ],
          )),
    );
  }
}
