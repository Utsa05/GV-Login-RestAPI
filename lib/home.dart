import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.token});
  final String token;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Center(
        child: Text("UserLogin\nToke:$token"),
      )),
    );
  }
}
