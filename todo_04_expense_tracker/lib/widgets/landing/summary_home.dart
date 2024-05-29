import 'package:flutter/material.dart';
import 'package:todo_04_expense_tracker/domain/landing/summary_repo.dart';

class SummaryHome extends StatefulWidget {
  const SummaryHome({super.key});

  @override
  State<SummaryHome> createState() => _SummaryHomeState();
}

class _SummaryHomeState extends State<SummaryHome> {
  @override
  void initState() {
    loadData();
  }

  Future<void> loadData() async {
    SummaryRepo().loadSummaryData();
  }

  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(16),
      height: 210,
      // color: Colors.deepOrangeAccent,
      // margin: EdgeInsets.only(bottom: 16),
      child: Stack(
        children: [
          Container(
            // smargin: EdgeInsetsall(16),
            height: 120,
            color: Colors.blueAccent,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 230,
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.only(bottom: 16),
              // color: Colors.green,
              // margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),

              child: Column(
                children: [
                  Container(
                    width: 200,
                    // height: 115,
                    // color: Colors.amber,
                    margin: EdgeInsets.only(bottom: 8),
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text(
                          'Current Balance',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Nu.50,000',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // height: 115,
                    color: Colors.white,
                    margin: EdgeInsets.only(bottom: 16),
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            // width: 200,
                            // color: Colors.amber,
                            // padding: EdgeInsets.all(8),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 60,
                                  // color: Colors.red,
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_downward,
                                      size: 30,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                      width: 120,
                                      // color: Colors.red,
                                      padding: EdgeInsets.all(8),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Total Income',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            'Nu.34,000',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          )
                                        ],
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          // color: Colors.amber,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 60,
                                // color: Colors.red,
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_upward,
                                    size: 30,
                                  ),
                                ),
                              ),
                              Container(
                                  width: 120,
                                  // color: Colors.red,
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Total Expenses',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                      Text(
                                        'Nu.17,000',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),

      // child: Column(
      //   children: [
      //     Container(
      //       // width: 200,
      //       // height: 115,
      //       // color: Colors.amber,
      //       margin: EdgeInsets.only(bottom: 16),
      //       padding: EdgeInsets.all(8),
      //       child: Column(
      //         children: [
      //           Text(
      //             'Current Balance',
      //             style: TextStyle(
      //               fontSize: 12,
      //             ),
      //           ),
      //           Text(
      //             'Nu.50,000',
      //             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      //           )
      //         ],
      //       ),
      //     ),
      //     Container(
      //       // height: 115,
      //       color: Colors.white,
      //       margin: EdgeInsets.only(bottom: 16),
      //       padding: EdgeInsets.all(8),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Expanded(
      //             child: Container(
      //               // width: 200,
      //               // color: Colors.amber,
      //               // padding: EdgeInsets.all(8),
      //               child: Row(
      //                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   Container(
      //                     width: 60,
      //                     // color: Colors.red,
      //                     child: Center(
      //                       child: Icon(
      //                         Icons.arrow_downward,
      //                         size: 30,
      //                       ),
      //                     ),
      //                   ),
      //                   Expanded(
      //                     child: Container(
      //                         width: 120,
      //                         // color: Colors.red,
      //                         padding: EdgeInsets.all(8),
      //                         child: Column(
      //                           children: [
      //                             Text(
      //                               'Total Income',
      //                               style: TextStyle(
      //                                   fontSize: 12, color: Colors.grey),
      //                             ),
      //                             Text(
      //                               'Nu.34,000',
      //                               style: TextStyle(
      //                                   fontSize: 16,
      //                                   fontWeight: FontWeight.bold,
      //                                   color: Colors.black),
      //                             )
      //                           ],
      //                         )),
      //                   )
      //                 ],
      //               ),
      //             ),
      //           ),
      //           Container(
      //             width: 200,
      //             // color: Colors.amber,
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Container(
      //                   width: 60,
      //                   // color: Colors.red,
      //                   child: Center(
      //                     child: Icon(
      //                       Icons.arrow_upward,
      //                       size: 30,
      //                     ),
      //                   ),
      //                 ),
      //                 Container(
      //                     width: 120,
      //                     // color: Colors.red,
      //                     padding: EdgeInsets.all(8),
      //                     child: Column(
      //                       children: [
      //                         Text(
      //                           'Total Expenses',
      //                           style:
      //                               TextStyle(fontSize: 12, color: Colors.grey),
      //                         ),
      //                         Text(
      //                           'Nu.17,000',
      //                           style: TextStyle(
      //                               fontSize: 16,
      //                               fontWeight: FontWeight.bold,
      //                               color: Colors.black),
      //                         )
      //                       ],
      //                     ))
      //               ],
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
