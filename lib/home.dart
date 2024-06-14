import 'package:flutter/material.dart';
import 'package:institute_imat/forgotpass.dart';
import 'language.dart';
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
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text("Media"),
              ),
              Tab(
                child: Text("Language"),
              ),
            ],
            labelColor: Colors.redAccent,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.black,
          ),
        ),
        body: TabBarView(
          children: [
            LoginPage(),
            Language(),
          ],
        ),
      ),
    );
  }
}
