import 'package:flutter/material.dart';
import 'package:givr/res/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class Charity extends StatelessWidget {
  const Charity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: getPropScreenWidth(364),
                child: Text(
                  'Most Popular',
                  style: GoogleFonts.quicksand(
                      fontSize: getPropScreenWidth(26),
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
