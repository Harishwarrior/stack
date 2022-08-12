import 'package:cred/src/utils/styles/styles.dart';
import 'package:cred/src/widgets/bank_list_tile.dart';
import 'package:cred/src/widgets/custom_button.dart';
import 'package:cred/src/widgets/header.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_stack.dart';

/// bank account selection page
class BankSelectionPage extends StatefulWidget {
  final bool isHidden;

  const BankSelectionPage({
    super.key,
    required this.isHidden,
  });

  @override
  State<BankSelectionPage> createState() => _BankSelectionPageState();
}

class _BankSelectionPageState extends State<BankSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return CustomStack(
      isHidden: widget.isHidden,
      pageSizeProportion: .65,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(
              title: "Where should we send the money?",
              subtitle:
                  "amount will be credited to this bank account, EMI will also be debited from this bank account",
            ),
            const BankListTile(
              accountNo: "50100117009192",
              imagePath: "assets/images/hdfc.jpg",
              bankName: "HDFC Bank",
            ),
            const SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26.0),
              child: OutlinedButton(
                style: Styles.outlinedButtonStyle,
                onPressed: () {},
                child: Text(
                  "Change account",
                  style: TextStyle(
                    color: Styles.titleColor,
                  ),
                ),
              ),
            ),
          ],
        ),
        const CustomButton(
          text: "Tap for 1-click KYC",
        ),
      ],
    );
  }
}
