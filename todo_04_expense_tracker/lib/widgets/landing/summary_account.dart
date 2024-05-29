import 'package:flutter/material.dart';
import 'package:todo_04_expense_tracker/base/style/text_style.dart';
import 'package:todo_04_expense_tracker/widgets/common/account_card.dart';

class SummaryAccounts extends StatelessWidget {
  const SummaryAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      // color: Colors.deepOrangeAccent,
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              'Current Balances',
              style: TypoStyles().kSectionHeader,
            ),
          ),
          Container(
            height: 200,
            color: Colors.white,
            margin: EdgeInsets.only(bottom: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  AccountCard(),
                  AccountCard(),
                  AccountCard(),
                  AccountCard(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
