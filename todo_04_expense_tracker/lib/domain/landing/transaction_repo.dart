import 'dart:convert';
import 'package:todo_04_expense_tracker/domain/landing/transaction_model.dart';
import 'package:todo_04_expense_tracker/plugins/http.dart';

Future<List<TransactionModel>> loadTransactionsData() async {
  final res = await GetRequest('transaction/me');
  print(jsonDecode(res.body)['data']);
  List<TransactionModel> temp = [];

  for (final data in jsonDecode(res.body)['data']) {
    temp.add(TransactionModel(
      id: data['id'],
      createdAt: data['createdAt'],
      updatedAt: data['updatedAt'],
      title: data['title'],
      note: data['note'],
      document: data['document'],
      amount: data['amount'],
      type: data['type'],
    ));
  }
  return temp;
}
 