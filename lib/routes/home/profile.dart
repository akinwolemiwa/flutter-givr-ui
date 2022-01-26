import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:givr/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String gift = 'assets/svg/gift.svg';
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: getPropScreenHeight(71),
              ),
              SizedBox(
                width: getPropScreenWidth(364),
                child: Text(
                  'Profile',
                  style: GoogleFonts.quicksand(
                      fontSize: getPropScreenWidth(26),
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: getPropScreenHeight(23),
              ),
              SizedBox(
                width: getPropScreenWidth(364),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Container(
                        foregroundDecoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xffE0AAFF),
                            width: getPropScreenWidth(8),
                          ),
                        ),
                        child: const CircleAvatar(
                          radius: 90,
                          backgroundImage: NetworkImage(
                              'https://i.pinimg.com/736x/0e/3c/f6/0e3cf6dc346bb8c530bc33f768f55fbb.jpg'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                        child: VerticalDivider(),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: getPropScreenWidth(120),
                            child: Text(
                              '10',
                              style: GoogleFonts.quicksand(
                                fontSize: getPropScreenWidth(81),
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff7B2CBF),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: getPropScreenWidth(120),
                            child: Text(
                              'Donations',
                              style: GoogleFonts.roboto(
                                fontSize: getPropScreenWidth(24),
                                fontWeight: FontWeight.w300,
                                color: const Color(0xff595959),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: getPropScreenWidth(364),
                child: Text(
                  'Tinu Davies',
                  style: GoogleFonts.quicksand(
                      fontSize: getPropScreenWidth(40),
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: getPropScreenHeight(3),
              ),
              SizedBox(
                width: getPropScreenWidth(364),
                child: Row(
                  children: [
                    const Icon(
                      Boxicons.bxs_map,
                      color: Color(0xffE0AAFF),
                      size: 20,
                    ),
                    Text(
                      'Lagos, Nigeria',
                      style: GoogleFonts.roboto(
                        fontSize: getPropScreenWidth(18),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getPropScreenHeight(52),
              ),
              Container(
                height: getPropScreenHeight(84),
                width: getPropScreenWidth(364),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff909090).withOpacity(0.25),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(37),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: getPropScreenWidth(50),
                          height: getPropScreenHeight(50),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffE0AAFF),
                          ),
                        ),
                        SizedBox(
                          height: getPropScreenHeight(25),
                          width: getPropScreenWidth(25),
                          child: SvgPicture.asset(
                            gift,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: SizedBox(
                        width: getPropScreenWidth(200),
                        child: Text(
                          'View Donations',
                          style: GoogleFonts.quicksand(
                            fontSize: getPropScreenWidth(20),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getPropScreenHeight(25),
              ),
              Container(
                height: getPropScreenHeight(84),
                width: getPropScreenWidth(364),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff909090).withOpacity(0.25),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(37),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: getPropScreenWidth(50),
                          height: getPropScreenHeight(50),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffE0AAFF),
                          ),
                        ),
                        SizedBox(
                          height: getPropScreenHeight(25),
                          width: getPropScreenWidth(25),
                          child: SvgPicture.asset(
                            gift,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: SizedBox(
                        width: getPropScreenWidth(200),
                        child: Text(
                          'Contact Details',
                          style: GoogleFonts.quicksand(
                            fontSize: getPropScreenWidth(20),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getPropScreenHeight(25),
              ),
              Container(
                height: getPropScreenHeight(84),
                width: getPropScreenWidth(364),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff909090).withOpacity(0.25),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(37),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: getPropScreenWidth(50),
                          height: getPropScreenHeight(50),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffE0AAFF),
                          ),
                        ),
                        SizedBox(
                          height: getPropScreenHeight(25),
                          width: getPropScreenWidth(25),
                          child: SvgPicture.asset(
                            gift,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: SizedBox(
                        width: getPropScreenWidth(200),
                        child: Text(
                          'Settings',
                          style: GoogleFonts.quicksand(
                            fontSize: getPropScreenWidth(20),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getPropScreenHeight(100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
