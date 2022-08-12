import 'package:cred/src/utils/styles/styles.dart';
import 'package:flutter/material.dart';

class PlanSelectionCard extends StatelessWidget {
  final String costPerMonth;
  final int monthCount;
  final Color backgroundColor;

  const PlanSelectionCard({
    super.key,
    required this.costPerMonth,
    required this.monthCount,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(20.0),
      height: 180,
      width: 180,
      decoration: Styles.cardDecorationStyle.copyWith(
        color: backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.check_circle_outline,
          ),
          const Spacer(),
          Text.rich(
            TextSpan(
              text: '₹$costPerMonth',
              style: const TextStyle(fontWeight: FontWeight.bold),
              children: <InlineSpan>[
                TextSpan(
                  text: ' /mo',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white70.withOpacity(
                      0.50,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            "for $monthCount months",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white70.withOpacity(
                0.50,
              ),
            ),
          ),
          const Spacer(),
          Text(
            "see calculations",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white70.withOpacity(
                0.50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
