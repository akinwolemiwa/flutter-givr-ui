import 'package:flutter/material.dart';
import 'package:givr/size_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Givr.",
              style: GoogleFonts.quicksand(
                fontSize: getPropScreenWidth(64),
                fontWeight: FontWeight.w700,
                color: const Color(0xff9D4EDD),
              ),
            ),
            Text(
              "A new way to give",
              style: GoogleFonts.quicksand(
                fontSize: getPropScreenWidth(18),
                fontWeight: FontWeight.w400,
                color: const Color(0xff9D4EDD),
              ),
            ),
            SizedBox(
              height: getPropScreenHeight(45),
            ),
            SizedBox(
              height: getPropScreenHeight(72),
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   PageTransition(
                //     child: const Login(),
                //     type: PageTransitionType.fade,
                //   ),
                // );
              },
              child: Container(
                decoration: BoxDecoration(
                  // ignore: prefer_const_constructors
                  color: Color(0xff7D40AF),
                  // ignore: prefer_const_constructors
                  borderRadius: BorderRadius.only(
                    // ignore: prefer_const_constructors
                    topRight: Radius.circular(62),
                    // ignore: prefer_const_constructors
                    bottomRight: Radius.circular(62),
                    // ignore: prefer_const_constructors
                    topLeft: Radius.circular(62),
                    // ignore: prefer_const_constructors
                    bottomLeft: Radius.circular(62),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      offset: const Offset(0, 4),
                      blurRadius: 4,
                    ),
                  ],
                ),
                height: getPropScreenHeight(64),
                width: getPropScreenWidth(206),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Login",
                    style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontSize: getPropScreenWidth(15),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getPropScreenHeight(9),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: GoogleFonts.roboto(
                      fontSize: getPropScreenWidth(12),
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  "Sign Up",
                  style: GoogleFonts.roboto(
                    fontSize: getPropScreenWidth(12),
                    fontWeight: FontWeight.w300,
                    color: const Color(0xff7D40AF),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
