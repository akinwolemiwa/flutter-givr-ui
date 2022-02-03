import 'package:flutter/material.dart';
import 'package:givr/size_config.dart';
import 'package:givr/widgets/homepagewidgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: getPropScreenHeight(71),
              ),
              const Welcome(),
              SizedBox(
                height: getPropScreenHeight(71),
              ),
              const ImageStack(),
              SizedBox(
                height: getPropScreenHeight(37),
              ),
              const Question(),
              SizedBox(
                height: getPropScreenHeight(37),
              ),
              const Options(),
              SizedBox(
                height: getPropScreenHeight(37),
              ),
              const Schedule(),
              SizedBox(
                height: getPropScreenHeight(50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
