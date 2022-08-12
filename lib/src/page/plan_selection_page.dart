import 'package:cred/src/page/bank_selection_page.dart';
import 'package:cred/src/page/select_amount_page.dart';
import 'package:cred/src/route/stack_page_route.dart';
import 'package:cred/src/widgets/custom_button.dart';
import 'package:cred/src/widgets/header.dart';
import 'package:cred/src/widgets/plan_selection_card.dart';
import 'package:flutter/material.dart';

import '../utils/styles/styles.dart';
import '../widgets/custom_stack.dart';
import '../widgets/hidden_header.dart';
import '../widgets/recommended_plan_chip.dart';
import 'home_page.dart';

/// plan selection page
class PlanSelectionPage extends StatefulWidget {
  final bool isHidden;

  const PlanSelectionPage({
    super.key,
    required this.isHidden,
  });

  @override
  State<PlanSelectionPage> createState() => _PlanSelectionPageState();
}

class _PlanSelectionPageState extends State<PlanSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return CustomStack(
      isHidden: widget.isHidden,
      pageSizeProportion: .75,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.isHidden
                ? HiddenHeader(
                    title: "EMI",
                    isHidden: widget.isHidden,
                    subtitle: '₹4,247/mo',
                    title2: "duration",
                    subtitle2: "12 months",
                  )
                : const Header(
                    title: "how do you wish to repay?",
                    subtitle: "chose one of our recommended plans",
                  ),
            SizedBox(
              height: 200,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 20.0,
                  ),
                  const PlanSelectionCard(
                    costPerMonth: '4,247',
                    monthCount: 12,
                    backgroundColor: Styles.cardColor1,
                  ),
                  Stack(
                    children: const [
                      PlanSelectionCard(
                        costPerMonth: '5,580',
                        monthCount: 9,
                        backgroundColor: Styles.cardColor2,
                      ),
                      RecommendedPlanChip(),
                    ],
                  ),
                  const PlanSelectionCard(
                    costPerMonth: '8,274',
                    monthCount: 6,
                    backgroundColor: Styles.cardColor3,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: OutlinedButton(
                onPressed: () {},
                style: Styles.outlinedButtonStyle,
                child: Text(
                  "Create your own plan",
                  style: TextStyle(color: Styles.titleColor),
                ),
              ),
            ),
          ],
        ),
        CustomButton(
          text: "Select your bank account",
          onTap: () => Navigator.push(
            context,
            StackPagesRoute(
              previousPages: [
                const HomePage(),
                const SelectAmountPage(isHidden: true),
                const PlanSelectionPage(isHidden: true),
              ],
              newPage: const BankSelectionPage(
                isHidden: false,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
