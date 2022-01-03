import 'package:wallet_clone/model/bank_model.dart';
import 'base_provider.dart';

class BankProvider extends BaseProvider {
  final List<Account> _bankList = [
    Account(
        name: 'Checking',
        accountNumber: '** 3421',
        amount: '\$3,800.00',
        logo: 'images/photo_2021-12-30_08-39-04_1-removebg-preview.png'),
    Account(
        name: 'Savings',
        accountNumber: '** 7903',
        amount: 'Manual',
        logo: 'images/Citi 1.png'),
  ];
  List<Account> get bankList => _bankList;
}
