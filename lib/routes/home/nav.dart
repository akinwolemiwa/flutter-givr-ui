import 'package:flutter/material.dart';
import 'package:givr/models/navbarmodel.dart';
import 'package:givr/routes/home/homepage.dart';
import 'package:givr/routes/home/notificationscreen.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:givr/routes/home/profile.dart';
import 'package:provider/provider.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  final tabs = [
    const HomePage(),
    const NotifScreen(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    final nav = Provider.of<NavBarProvider>(context);
    return Scaffold(
      body: tabs[nav.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: nav.currentIndex,
        onTap: (index) {
          nav.currentIndex = index;
        },
        backgroundColor: const Color(0xff7B2CBF),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Boxicons.bxs_home,
              size: 37,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              size: 37,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Boxicons.bxs_user_circle,
              size: 37,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
