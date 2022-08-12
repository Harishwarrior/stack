import 'package:cred/src/utils/styles/styles.dart';
import 'package:cred/src/widgets/fade_animation.dart';
import 'package:flutter/material.dart';

/// custom list tile view implementation. shows [title] ,[title2], [subtitle], [subtitle2] and [isHidden] used to show drop down arrow
class HiddenHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? title2;
  final String? subtitle2;

  final bool isHidden;

  const HiddenHeader({
    required this.title,
    required this.subtitle,
    super.key,
    required this.isHidden,
    this.title2,
    this.subtitle2,
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
                  style: Styles.subtitleStyle,
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  subtitle,
                  style: Styles.titleStyle,
                ),
              ],
            ),
            if (title2 != null && subtitle2 != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title2!,
                    style: Styles.subtitleStyle,
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    subtitle2!,
                    style: Styles.titleStyle,
                  ),
                ],
              ),
            isHidden ? const Icon(Icons.expand_more) : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
