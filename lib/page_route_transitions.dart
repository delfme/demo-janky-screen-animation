
// Custom PageRoute - not used
import 'package:flutter/cupertino.dart';

class ScaleRoute extends PageRouteBuilder {
  final Widget page;
  final Duration duration;

  @override
  Duration get transitionDuration => duration;

  ScaleRoute({
    required this.page,
    required this.duration
  })
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        ScaleTransition(
          scale: Tween<double>(
            begin: 0.0,
            end: 1.0,
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.fastOutSlowIn,
            ),
          ),
          child: child,
        ),
  );
}



class SizeRoute extends PageRouteBuilder {
  final Widget page;
  final Duration duration;

  @override
  Duration get transitionDuration => duration;

  SizeRoute({
    required this.page,
    required this.duration
  })
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        Align(
          child: SizeTransition(
            sizeFactor: animation,
            child: child,
          ),
        ),
  );
}


class FadeRoute extends PageRouteBuilder {
  final Widget page;
  final Duration duration;

  @override
  Duration get transitionDuration => duration;

  FadeRoute({
    required this.page,
    required this.duration
  })
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        FadeTransition(
          opacity: animation,
          child: child,
        ),
  );
}


class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  final Duration duration;

  @override
  Duration get transitionDuration => duration;

  SlideRightRoute({
    required this.page,
    required this.duration})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1, 0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
  );
}

class SlideLeftRoute extends PageRouteBuilder {
  final Widget page;
  final Duration duration;

  @override
  Duration get transitionDuration => duration;

  SlideLeftRoute({
    required this.page,
    required this.duration})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
  );
}

class SlideTopRoute extends PageRouteBuilder {
  final Widget page;
  final Duration duration;

  @override
  Duration get transitionDuration => duration;

  SlideTopRoute({
    required this.page,
    required this.duration
  })
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 1),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
  );
}

class SlideBottomRoute extends PageRouteBuilder {
  final Widget page;
  final Duration duration;

  @override
  Duration get transitionDuration => duration;

  SlideBottomRoute({
    required this.page,
    required this.duration})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, -1),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
  );
}
