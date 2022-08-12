import 'package:cred/src/utils/styles/styles.dart';
import 'package:flutter/material.dart';

class RecommendedPlanChip extends StatelessWidget {
  const RecommendedPlanChip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          padding: const EdgeInsets.all(4.0),
          height: 20.0,
          width: 100.0,
          decoration: Styles.recommendedChipStyle,
          alignment: Alignment.center,
          child: const Text(
            "recommended",
            style: Styles.textStyleDarkSmall,
          ),
        ),
      ),
    );
  }
}
