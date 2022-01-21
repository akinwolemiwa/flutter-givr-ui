import 'package:flutter/material.dart';
import 'package:givr/size_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: getPropScreenHeight(896),
          width: getPropScreenWidth(414),
          child: const Text('Home'),
        ),
      ),
    );
  }
}
