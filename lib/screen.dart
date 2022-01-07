import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallet_clone/model/bank_model.dart';
import 'package:wallet_clone/provider/banks_provider.dart';
import 'package:wallet_clone/provider/cards_provider.dart';
import 'package:wallet_clone/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title, this.account})
      : super(key: key);

  final String title;
  final Account? account;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final _cards = context.watch<CardsProvider>();
    final _accounts = context.watch<BankProvider>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'My Wallet',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 16,
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset('images/qr-code 1.png'),
            onPressed: () {},
          ),
          const SizedBox(width: 10),
          CircleAvatar(
            child: Image.asset('images/unsplash_ILip77SbmOE.png'),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 30),
            const Center(
              child: Text(
                'Balance',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Center(
              child: Text(
                '\$22,180.00',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomButton(text: Text('Add')),
                SizedBox(width: 15.0),
                CustomButton(text: Text('Withdraw')),
              ],
            ),
            const SizedBox(height: 15),
            const Divider(thickness: 1),
            const SizedBox(height: 40),
            const PageHeader(
              title: "Bank Accounts",
              bottom: 10,
            ),
            ...List.generate(_cards.cardList.length, (index) {
              final data = _accounts.bankList[index];
              return AccountsListTileItem(
                leading: data.logo,
                title: data.name,
                subtitle: data.accountNumber,
                trailing: data.amount,
              );
            }),
            const SizedBox(height: 40),
            const PageHeader(
              title: "Cards",
              bottom: 10,
            ),
            ...List.generate(_cards.cardList.length, (index) {
              final data = _cards.cardList[index];
              return AccountsListTileItem(
                leading: data.logo,
                title: data.name,
                subtitle: data.cardNumber,
                trailing: data.amount,
              );
            }),
          ],
        ),
      ),
    );
  }
}
