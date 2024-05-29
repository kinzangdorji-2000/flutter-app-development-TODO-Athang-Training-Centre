import 'dart:convert';
import 'package:todo_04_expense_tracker/plugins/http.dart';

class SummaryRepo {
  Future<void> loadSummaryData() async {
    final res = await GetRequest('/summary');
    //this function prints the backend data
    print(jsonDecode(res.body));
  }
}
