import 'package:flutter/material.dart';
// import 'package:givr/models/navbarmodel.dart';
import 'package:givr/routes/home/homepage.dart';
import 'package:givr/routes/home/notificationscreen.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:givr/routes/home/profile.dart';
// import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  final GlobalKey<NavigatorState> firstTabNavKey = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> secondTabNavKey = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> thirdTabNavKey = GlobalKey<NavigatorState>();
  late CupertinoTabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = CupertinoTabController(initialIndex: 0);
  }

  // final tabs = [
  //   const HomePage(),
  //   const NotifScreen(),
  //   const Profile(),
  // ];
  @override
  Widget build(BuildContext context) {
    final keysList = [firstTabNavKey, secondTabNavKey, thirdTabNavKey];
    // List homeScreenList = [
    //   const HomePage(),
    //     const NotifScreen(),
    //     const Profile(),
    // ];
    // final nav = Provider.of<NavBarProvider>(context);
    return WillPopScope(
      onWillPop: () async {
        return !await keysList[tabController.index].currentState!.maybePop();
      },
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          activeColor: Colors.white,
          inactiveColor: Colors.white,
          backgroundColor: const Color(0xff7B2CBF),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 7),
                child: Icon(
                  Boxicons.bxs_home,
                  size: 30,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 7),
                child: Icon(
                  Icons.notifications,
                  size: 30,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 7),
                child: Icon(
                  Boxicons.bxs_user_circle,
                  size: 30,
                ),
              ),
              label: "",
            ),
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                navigatorKey: firstTabNavKey,
                builder: (context) {
                  return const CupertinoPageScaffold(
                    child: HomePage(),
                  );
                },
              );
            case 1:
              return CupertinoTabView(
                navigatorKey: secondTabNavKey,
                builder: (context) {
                  return const CupertinoPageScaffold(
                    child: NotifScreen(),
                  );
                },
              );
            case 2:
              return CupertinoTabView(
                navigatorKey: thirdTabNavKey,
                builder: (context) {
                  return const CupertinoPageScaffold(
                    child: Profile(),
                  );
                },
              );
            default:
              return CupertinoTabView(
                navigatorKey: firstTabNavKey,
                builder: (context) {
                  return const CupertinoPageScaffold(
                    child: HomePage(),
                  );
                },
              );
          }
        },
      ),
    );

    // Scaffold(
    //   body: tabs[nav.currentIndex],
    //   bottomNavigationBar: BottomNavigationBar(
    //     currentIndex: nav.currentIndex,
    //     onTap: (index) {
    //       nav.currentIndex = index;
    //     },
    //     backgroundColor: const Color(0xff7B2CBF),
    //     unselectedItemColor: Colors.white,
    //     selectedItemColor: Colors.white,
    //     items: const [
    //       BottomNavigationBarItem(
    //         icon: Icon(
    //           Boxicons.bxs_home,
    //           size: 37,
    //         ),
    //         label: "",
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(
    //           Icons.notifications,
    //           size: 37,
    //         ),
    //         label: "",
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(
    //           Boxicons.bxs_user_circle,
    //           size: 37,
    //         ),
    //         label: "",
    //       ),
    //     ],
    //   ),
    // );
  }
}
