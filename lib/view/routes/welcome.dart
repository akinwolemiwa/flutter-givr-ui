import 'package:flutter/material.dart';
import 'package:givr/res/constants.dart';
import 'package:givr/res/size_config.dart';
import 'package:givr/view/routes/auth/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolour,
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: getPropScreenWidth(267),
                    height: getPropScreenHeight(267),
                    foregroundDecoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xffE0AAFF),
                        width: getPropScreenWidth(28.77),
                      ),
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffEED1FF),
                    ),
                  ),
                  SizedBox(
                    height: getPropScreenHeight(24),
                  ),
                  Text(
                    "Givr.",
                    style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontSize: getPropScreenWidth(64),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "A new way to give",
                    style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontSize: getPropScreenWidth(20),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: getPropScreenHeight(82),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child: const Login(),
                          type: PageTransitionType.fade,
                        ),
                      );
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(62),
                          bottomRight: Radius.circular(62),
                          topLeft: Radius.circular(62),
                          bottomLeft: Radius.circular(62),
                        ),
                      ),
                      height: getPropScreenHeight(76),
                      width: getPropScreenWidth(312),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.quicksand(
                            color: primarycolour,
                            fontSize: getPropScreenWidth(23),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getPropScreenHeight(497),
              width: getPropScreenWidth(423),
              child: Image.asset(
                'assets/images/handshake.png',
                fit: BoxFit.fitWidth,
              ),
            )
          ],
        ),
      ),
    );
  }
}
