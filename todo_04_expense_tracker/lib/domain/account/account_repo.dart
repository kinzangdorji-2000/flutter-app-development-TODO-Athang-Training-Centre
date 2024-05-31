import 'dart:convert';
import 'package:todo_04_expense_tracker/plugins/http.dart';

import 'account_model.dart';

class AccountRepo {
  Future loadAccounts() async{
    final res = await GetRequest('account/me');
    print(jsonDecode(res.body));
    List<AccountModel> tempAccounts = [];
    for(final acc in jsonDecode(res.body)['data']){
      tempAccounts.add(AccountModel.fromJson(acc));
    }
    return tempAccounts;
  }
}