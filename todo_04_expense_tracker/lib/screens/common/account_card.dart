import 'package:flutter/material.dart';
import 'package:todo_04_expense_tracker/base/style/text_styles.dart';

class AccountCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 300,
      // color: Colors.blueAccent,
      margin: EdgeInsets.only(left: 16),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border:Border.all(color:Colors.black),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 50,
              padding: EdgeInsets.all(6),
              margin: EdgeInsets.only(bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('NIBL', style: TypoStyles().kSectionHeader,),
                  CircleAvatar(
                  backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2024/03/21/15/38/man-8647994_640.png"),
                  )
                ],
              ),
            ),
          ),
          Container(
            // color:Colors.white,
            margin: EdgeInsets.only(bottom: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nu. 12000',
                  style: TypoStyles().kPageHeader,
                ),
                Text(
                  'Nu. 1200 this month',
                  style: TypoStyles().kSectionHeader,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
