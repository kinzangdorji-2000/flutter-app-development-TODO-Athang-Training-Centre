import 'dart:convert';
import 'package:todo_04_expense_tracker/domain/account/account_model.dart';
import 'package:todo_04_expense_tracker/plugins/http.dart';

class AccountRepo {
  Future loadAccounts() async{
    final res = await GetRequest('account');
    print(jsonDecode(res.body));
    List<AccountModel> tempAccounts = [];
    for(final acc in jsonDecode(res.body)['data']){
      tempAccounts.add(AccountModel.fromJson(acc));
    }
    return tempAccounts;
  }
}