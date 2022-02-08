import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:givr/res/constants.dart';
import 'package:givr/res/size_config.dart';
import 'package:givr/view/routes/charity/charity.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getPropScreenWidth(364),
      child: Text(
        'Welcome, Tinu 😊',
        style: GoogleFonts.quicksand(
            fontSize: getPropScreenWidth(26), fontWeight: FontWeight.w700),
      ),
    );
  }
}

class ImageStack extends StatelessWidget {
  const ImageStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: getPropScreenHeight(166),
          width: getPropScreenWidth(364),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.network(
              'https://previews.123rf.com/images/lenanichizhenova/lenanichizhenova1812/lenanichizhenova181201732/114373620-fashion-winter-coats-hanged-on-a-clothes-rack.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          height: getPropScreenHeight(166),
          width: getPropScreenWidth(364),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(25),
              bottomRight: Radius.circular(25),
              topLeft: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xffFFFFFF).withOpacity(0.39),
                  const Color(0xff2E1047).withOpacity(0.47),
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 80, 0, 10),
          child: SizedBox(
            width: getPropScreenWidth(248),
            child: Text(
              'Your donations go a long way to help others in need.',
              style: GoogleFonts.roboto(
                  fontSize: getPropScreenWidth(14),
                  fontWeight: FontWeight.w500,
                  color: white),
            ),
          ),
        ),
      ],
    );
  }
}

class Question extends StatelessWidget {
  const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getPropScreenWidth(364),
      child: Text(
        'What would you like to do?',
        style: GoogleFonts.quicksand(
          fontSize: getPropScreenWidth(18),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class Options extends StatelessWidget {
  const Options({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String gift = 'assets/svg/gift.svg';
    String lovehand = 'assets/svg/lovehand.svg';
    return SizedBox(
      width: getPropScreenWidth(364),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context, rootNavigator: false).push(
                PageTransition(
                  child: const Charity(),
                  type: PageTransitionType.fade,
                ),
              );
            },
            child: Container(
              height: getPropScreenHeight(170),
              width: getPropScreenWidth(170),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffE0AAFF),
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffE0AAFF),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: SizedBox(
                        height: getPropScreenHeight(30),
                        width: getPropScreenWidth(30),
                        child: SvgPicture.asset(
                          lovehand,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getPropScreenHeight(16),
                  ),
                  SizedBox(
                    width: getPropScreenWidth(85),
                    child: Text(
                      'Donate to a charity',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.quicksand(
                        fontSize: getPropScreenWidth(14),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: getPropScreenHeight(170),
            width: getPropScreenWidth(170),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffE0AAFF),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffE0AAFF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: SizedBox(
                      height: getPropScreenHeight(30),
                      width: getPropScreenWidth(30),
                      child: SvgPicture.asset(
                        gift,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: getPropScreenHeight(16),
                ),
                SizedBox(
                  width: getPropScreenWidth(85),
                  child: Text(
                    'Peer-to-peer donations',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      fontSize: getPropScreenWidth(14),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String calendar = 'assets/svg/calendar.svg';
    return Container(
      height: getPropScreenHeight(170),
      width: getPropScreenWidth(364),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffE0AAFF),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: getPropScreenWidth(100),
                height: getPropScreenHeight(100),
                foregroundDecoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xffEBCEFC),
                    width: getPropScreenWidth(68),
                  ),
                ),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE0AAFF),
                ),
              ),
              SizedBox(
                height: getPropScreenHeight(32),
                width: getPropScreenWidth(32),
                child: SvgPicture.asset(
                  calendar,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: getPropScreenWidth(157),
                  child: Text(
                    'Did you know?',
                    style: GoogleFonts.quicksand(
                      fontSize: getPropScreenWidth(14),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  width: getPropScreenWidth(157),
                  child: Text(
                    'You can now schedule donations with Givr.',
                    style: GoogleFonts.quicksand(
                      fontSize: getPropScreenWidth(14),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: getPropScreenHeight(5),
                ),
                Container(
                  decoration: BoxDecoration(
                    // ignore: prefer_const_constructors
                    color: Color(0xff7D40AF),
                    // ignore: prefer_const_constructors
                    borderRadius: BorderRadius.only(
                      // ignore: prefer_const_constructors
                      topRight: Radius.circular(38),
                      // ignore: prefer_const_constructors
                      bottomRight: Radius.circular(38),
                      // ignore: prefer_const_constructors
                      topLeft: Radius.circular(38),
                      // ignore: prefer_const_constructors
                      bottomLeft: Radius.circular(38),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        offset: const Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  height: getPropScreenHeight(35),
                  width: getPropScreenWidth(157),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Schedule a Donation",
                      style: GoogleFonts.quicksand(
                        color: white,
                        fontSize: getPropScreenWidth(14),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
