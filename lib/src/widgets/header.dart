import 'package:cred/src/utils/styles/styles.dart';
import 'package:cred/src/widgets/fade_animation.dart';
import 'package:flutter/material.dart';

/// custom list tile view implementation. shows [title] , [subtitle]
class Header extends StatelessWidget {
  final String title;
  final String? subtitle;

  const Header({
    required this.title,
    this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: Styles.titleStyle,
                ),
                if (subtitle != null)
                  const SizedBox(
                    height: 8.0,
                  ),
                if (subtitle != null)
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .70,
                    child: Text(
                      subtitle!,
                      style: Styles.subtitleStyle,
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
