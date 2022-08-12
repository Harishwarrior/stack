import 'package:cred/src/page/select_amount_page.dart';
import 'package:cred/src/route/stack_page_route.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: const SafeArea(
        child: Center(
          child: Text(
            'Stack',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.push(
          context,
          StackPagesRoute(
            previousPages: [
              const HomePage(),
            ],
            newPage: const SelectAmountPage(
              isHidden: false,
            ),
          ),
        ),
        label: const Text("Start"),
      ),
    );
  }
}
