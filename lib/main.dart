import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:givr/models/navbarmodel.dart';
import 'package:givr/routes/welcome.dart';
import 'package:givr/size_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Listener(
      onPointerDown: (_) {
        final FocusScopeNode currentScope = FocusScope.of(context);
        if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
          FocusManager.instance.primaryFocus!.unfocus();
        }
      },
      child: ChangeNotifierProvider(
        create: (context) => NavBarProvider(),
        child: MaterialApp(
          title: 'Givr',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const SplashScreen(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        // ignore: unnecessary_this
        this.context,
        MaterialPageRoute(
          builder: (context) => const WelcomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    // ignore: unnecessary_statements
    SizeConfig.mediaQueryData;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: getPropScreenHeight(896),
                  color: const Color(0xff7D40AF),
                ),
                // ignore: avoid_unnecessary_containers
                Text(
                  "Givr.",
                  style: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontSize: getPropScreenWidth(64),
                    fontWeight: FontWeight.w700,
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
