import 'package:flutter/material.dart';
import 'package:givr/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class NotifScreen extends StatelessWidget {
  const NotifScreen({Key? key}) : super(key: key);

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
              SizedBox(
                width: getPropScreenWidth(364),
                child: Text(
                  'Notifications',
                  style: GoogleFonts.quicksand(
                      fontSize: getPropScreenWidth(26),
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: getPropScreenHeight(33),
              ),
              SizedBox(
                width: getPropScreenWidth(364),
                child: Text(
                  'New',
                  style: GoogleFonts.quicksand(
                      fontSize: getPropScreenWidth(18),
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: getPropScreenHeight(6),
              ),
              Container(
                width: getPropScreenWidth(364),
                decoration: BoxDecoration(
                  color: const Color(0xffE7E7E7).withOpacity(0.07),
                  border: Border.all(
                    color: const Color(0xffDADADA).withOpacity(0.25),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/736x/0e/3c/f6/0e3cf6dc346bb8c530bc33f768f55fbb.jpg'),
                        backgroundColor: Colors.transparent,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: getPropScreenWidth(200),
                            child: Text(
                              'Donation Received',
                              style: GoogleFonts.roboto(
                                fontSize: getPropScreenWidth(16),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getPropScreenHeight(5),
                          ),
                          SizedBox(
                            width: getPropScreenWidth(200),
                            child: Text(
                              'Jackie Chna',
                              style: GoogleFonts.roboto(
                                fontSize: getPropScreenWidth(14),
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff979797),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: getPropScreenWidth(50),
                            child: Text(
                              '🎉🎉🎉',
                              style: GoogleFonts.roboto(
                                fontSize: getPropScreenWidth(16),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getPropScreenHeight(5),
                          ),
                          SizedBox(
                            width: getPropScreenWidth(50),
                            child: Text(
                              '10:50 AM',
                              style: GoogleFonts.roboto(
                                fontSize: getPropScreenWidth(14),
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff979797),
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
                height: getPropScreenHeight(29),
              ),
              SizedBox(
                width: getPropScreenWidth(364),
                child: Text(
                  'This Week',
                  style: GoogleFonts.quicksand(
                      fontSize: getPropScreenWidth(18),
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: getPropScreenHeight(7),
              ),
              Container(
                width: getPropScreenWidth(364),
                decoration: BoxDecoration(
                  color: const Color(0xffE7E7E7).withOpacity(0.07),
                  border: Border.all(
                    color: const Color(0xffDADADA).withOpacity(0.25),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/736x/0e/3c/f6/0e3cf6dc346bb8c530bc33f768f55fbb.jpg'),
                        backgroundColor: Colors.transparent,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: getPropScreenWidth(200),
                            child: Text(
                              'Donation Received',
                              style: GoogleFonts.roboto(
                                fontSize: getPropScreenWidth(16),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getPropScreenHeight(5),
                          ),
                          SizedBox(
                            width: getPropScreenWidth(200),
                            child: Text(
                              'Stand to End Rape',
                              style: GoogleFonts.roboto(
                                fontSize: getPropScreenWidth(14),
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff979797),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: getPropScreenWidth(50),
                            child: Text(
                              '🎉🎉🎉',
                              style: GoogleFonts.roboto(
                                fontSize: getPropScreenWidth(16),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getPropScreenHeight(5),
                          ),
                          SizedBox(
                            width: getPropScreenWidth(50),
                            child: Text(
                              'yesterday',
                              style: GoogleFonts.roboto(
                                fontSize: getPropScreenWidth(14),
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff979797),
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
                height: getPropScreenHeight(18),
              ),
              Container(
                width: getPropScreenWidth(364),
                decoration: BoxDecoration(
                  color: const Color(0xffE7E7E7).withOpacity(0.07),
                  border: Border.all(
                    color: const Color(0xffDADADA).withOpacity(0.25),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/736x/0e/3c/f6/0e3cf6dc346bb8c530bc33f768f55fbb.jpg'),
                        backgroundColor: Colors.transparent,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: getPropScreenWidth(200),
                            child: Text(
                              'Donation Received',
                              style: GoogleFonts.roboto(
                                fontSize: getPropScreenWidth(16),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getPropScreenHeight(5),
                          ),
                          SizedBox(
                            width: getPropScreenWidth(200),
                            child: Text(
                              'Jackie Chna',
                              style: GoogleFonts.roboto(
                                fontSize: getPropScreenWidth(14),
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff979797),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: getPropScreenWidth(50),
                            child: Text(
                              '🎉🎉🎉',
                              style: GoogleFonts.roboto(
                                fontSize: getPropScreenWidth(16),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getPropScreenHeight(5),
                          ),
                          SizedBox(
                            width: getPropScreenWidth(50),
                            child: Text(
                              '10:50 AM',
                              style: GoogleFonts.roboto(
                                fontSize: getPropScreenWidth(14),
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff979797),
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
                height: getPropScreenHeight(18),
              ),
              Container(
                width: getPropScreenWidth(364),
                decoration: BoxDecoration(
                  color: const Color(0xffE7E7E7).withOpacity(0.07),
                  border: Border.all(
                    color: const Color(0xffDADADA).withOpacity(0.25),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/736x/0e/3c/f6/0e3cf6dc346bb8c530bc33f768f55fbb.jpg'),
                        backgroundColor: Colors.transparent,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: getPropScreenWidth(200),
                            child: Text(
                              'Donation Received',
                              style: GoogleFonts.roboto(
                                fontSize: getPropScreenWidth(16),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getPropScreenHeight(5),
                          ),
                          SizedBox(
                            width: getPropScreenWidth(200),
                            child: Text(
                              'Jackie Chna',
                              style: GoogleFonts.roboto(
                                fontSize: getPropScreenWidth(14),
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff979797),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: getPropScreenWidth(50),
                            child: Text(
                              '🎉🎉🎉',
                              style: GoogleFonts.roboto(
                                fontSize: getPropScreenWidth(16),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getPropScreenHeight(5),
                          ),
                          SizedBox(
                            width: getPropScreenWidth(50),
                            child: Text(
                              '10:50 AM',
                              style: GoogleFonts.roboto(
                                fontSize: getPropScreenWidth(14),
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff979797),
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
                height: getPropScreenHeight(18),
              ),
              SizedBox(
                width: getPropScreenWidth(364),
                child: Text(
                  'Older',
                  style: GoogleFonts.quicksand(
                      fontSize: getPropScreenWidth(18),
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: getPropScreenHeight(7),
              ),
              Container(
                width: getPropScreenWidth(364),
                decoration: BoxDecoration(
                  color: const Color(0xffE7E7E7).withOpacity(0.07),
                  border: Border.all(
                    color: const Color(0xffDADADA).withOpacity(0.25),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/736x/0e/3c/f6/0e3cf6dc346bb8c530bc33f768f55fbb.jpg'),
                        backgroundColor: Colors.transparent,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: getPropScreenWidth(200),
                            child: Text(
                              'Donation Received',
                              style: GoogleFonts.roboto(
                                fontSize: getPropScreenWidth(16),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getPropScreenHeight(5),
                          ),
                          SizedBox(
                            width: getPropScreenWidth(200),
                            child: Text(
                              'Stand to End Rape',
                              style: GoogleFonts.roboto(
                                fontSize: getPropScreenWidth(14),
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff979797),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: getPropScreenWidth(50),
                            child: Text(
                              '🎉🎉🎉',
                              style: GoogleFonts.roboto(
                                fontSize: getPropScreenWidth(16),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getPropScreenHeight(5),
                          ),
                          SizedBox(
                            width: getPropScreenWidth(50),
                            child: Text(
                              'yesterday',
                              style: GoogleFonts.roboto(
                                fontSize: getPropScreenWidth(14),
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff979797),
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
                height: getPropScreenHeight(50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
