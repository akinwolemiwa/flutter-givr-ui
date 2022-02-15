import 'package:flutter/material.dart';
import 'package:givr/main.dart';
import 'package:givr/view/routes/auth/login.dart';
import 'package:givr/view/routes/auth/signup.dart';
import 'package:givr/view/routes/charity/charity.dart';
import 'package:givr/view/routes/home/nav.dart';

class PageViewTransition<T> extends MaterialPageRoute<T> {
  PageViewTransition({WidgetBuilder? builder, RouteSettings? settings})
      : super(builder: builder!, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (settings.name == '/') return child;
    if (animation.status == AnimationStatus.reverse) {
      return super
          .buildTransitions(context, animation, secondaryAnimation, child);
    }
    return FadeTransition(opacity: animation, child: child);
  }
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget? page;
  SlideRightRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page!,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(opacity: animation, child: page),
        );
}

class AppRoute {
  static const String splashscreen = '/splashScreen';
  static const String login = '/login';
  static const String nav = '/nav';
  static const String signup = '/signup';
  static const String charity = '/charity';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashscreen:
        return PageViewTransition(builder: (_) => const SplashScreen());
      case login:
        return PageViewTransition(builder: (_) => const Login());
      case nav:
        return PageViewTransition(builder: (_) => const Nav());
      case signup:
        return PageViewTransition(builder: (_) => const SignUp());
      case charity:
        return PageViewTransition(builder: (_) => const Charity());
      default:
        return PageViewTransition(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
