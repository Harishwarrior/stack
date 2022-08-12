import 'package:cred/src/utils/styles/styles.dart';
import 'package:flutter/material.dart';

/// Custom stack implementation
class CustomStack extends StatelessWidget {
  final List<Widget> children;
  final double pageSizeProportion;
  final bool isHidden;

  const CustomStack({
    super.key,
    required this.pageSizeProportion,
    required this.children,
    required this.isHidden,
  });

  @override
  Widget build(BuildContext context) {
    /// getting the total size of screen
    Size screenSize = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        /// empty portion on top of page which shows a peek of previous page
        Align(
          alignment: Alignment.topCenter,
          child: GestureDetector(
            onTap: () => popFromStack(context),
            child: Container(
              width: double.infinity,
              height: screenSize.height * (4 - pageSizeProportion),
              color: Colors.transparent,
            ),
          ),
        ),

        /// this widget holds the widget that is yet be added to stack
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: screenSize.width,
            height: screenSize.height * pageSizeProportion,
            decoration: Styles.containerDecorationStyle,
            clipBehavior: Clip.hardEdge,
            child: Scaffold(
              backgroundColor:
                  isHidden ? const Color(0xFF1a1c29) : Styles.backgroundColor,
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children,
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Pop the current page out of Navigation stack
  popFromStack(BuildContext context) {
    /// checking whether the route can be popped and pop if true
    if (Navigator.of(context).canPop()) Navigator.of(context).pop();
  }
}
