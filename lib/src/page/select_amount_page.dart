import 'package:cred/src/page/home_page.dart';
import 'package:cred/src/page/plan_selection_page.dart';
import 'package:cred/src/route/stack_page_route.dart';
import 'package:cred/src/utils/styles/styles.dart';
import 'package:cred/src/widgets/custom_button.dart';
import 'package:cred/src/widgets/custom_stack.dart';
import 'package:cred/src/widgets/header.dart';
import 'package:flutter/material.dart';

import '../widgets/hidden_header.dart';

/// amount selection page
class SelectAmountPage extends StatefulWidget {
  final bool isHidden;

  const SelectAmountPage({
    super.key,
    required this.isHidden,
  });

  @override
  State<SelectAmountPage> createState() => _SelectAmountPageState();
}

class _SelectAmountPageState extends State<SelectAmountPage> {
  @override
  Widget build(BuildContext context) {
    return CustomStack(
      isHidden: widget.isHidden,
      pageSizeProportion: .85,
      children: [
        widget.isHidden
            ? HiddenHeader(
                title: "credit amount",
                subtitle: "₹1,50,000",
                isHidden: widget.isHidden,
              )
            : const Header(
                title: "nikunj, how much do you need?",
                subtitle:
                    "move the dial and set any amount you need upto ₹ 487891",
              ),
        Container(
          height: 400,
          margin: const EdgeInsets.all(20.0),
          padding: const EdgeInsets.all(20.0),
          decoration: Styles.amountSelectionStyle,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 250,
                width: 250,
                decoration: Styles.amountSelectionDailStyle,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "credit amount",
                      style: Styles.textStyleLightBig,
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      "₹1,50,000",
                      style: Styles.amountTextStyle,
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      "@1.04% monthly",
                      style: Styles.interestTextStyle,
                    ),
                  ],
                ),
              ),
              const Text(
                "stash is instant, money will be credited within seconds",
                textAlign: TextAlign.center,
                style: Styles.textStyleLightBig,
              ),
            ],
          ),
        ),
        CustomButton(
          text: "Proceed to EMI selection",
          onTap: () => Navigator.push(
            context,
            StackPagesRoute(
              previousPages: [
                const HomePage(),
                const SelectAmountPage(isHidden: true),
              ],
              newPage: const PlanSelectionPage(
                isHidden: false,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
