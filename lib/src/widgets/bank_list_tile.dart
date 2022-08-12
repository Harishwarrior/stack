import 'package:cred/src/utils/styles/styles.dart';
import 'package:flutter/material.dart';

/// displays bank details in a list tile view
class BankListTile extends StatelessWidget {
  final String imagePath;
  final String bankName;
  final String accountNo;

  const BankListTile({
    super.key,
    required this.imagePath,
    required this.bankName,
    required this.accountNo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: ListTile(
        leading: Image.asset(
          imagePath,
          height: 40.0,
          width: 40.0,
        ),
        title: Text(
          bankName,
          style: Styles.textStyleMedium,
        ),
        subtitle: Text(
          accountNo,
          style: TextStyle(
            color: Styles.subtitleColor,
          ),
        ),
        trailing: Icon(
          Icons.check_circle,
          color: Styles.subtitleColor,
        ),
      ),
    );
  }
}
