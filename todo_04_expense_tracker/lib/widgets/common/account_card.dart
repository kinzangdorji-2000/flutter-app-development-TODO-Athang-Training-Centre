import 'package:flutter/material.dart';
import 'package:todo_04_expense_tracker/base/style/text_style.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      color: Colors.blueAccent,
      margin: EdgeInsets.only(left: 16),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 60,
              padding: EdgeInsets.all(6),
              color: Colors.white,
              margin: EdgeInsets.only(bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('NIBL', style: TypoStyles().kSectionHeader, ),
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2020/06/29/20/12/man-in-red-dress-5354230_1280.png"),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nu. 12000', style: TypoStyles().kPageHeader),
                Text('Nu. 1200 this month', style: TypoStyles().kSectionHeader,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
