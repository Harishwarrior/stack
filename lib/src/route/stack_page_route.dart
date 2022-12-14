import 'package:flutter/material.dart';

class StackPagesRoute extends PageRouteBuilder {
  /// [newPage] is the widget that goes to top of stack
  final Widget newPage;

  /// [previousPages] contains all the pages behind the [newPage]
  final List<Widget> previousPages;

  StackPagesRoute({required this.previousPages, required this.newPage})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              newPage,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return Stack(
              clipBehavior: Clip.hardEdge,
              fit: StackFit.expand,
              children: <Widget>[
                ...previousPages,
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 1.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: newPage,
                ),
              ],
            );
          },
        );
}
