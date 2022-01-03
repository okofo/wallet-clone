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
    final _cards = context.read<CardsProvider>();
    final _accounts = context.read<BankProvider>();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: CustomAppBar(
          text: const Text(
            'My Wallet',
            style: TextStyle(color: Colors.black),
          ),
          icon: IconButton(
              icon: Image.asset('images/qr-code 1.png'), onPressed: null),
          avatar: CircleAvatar(
            child: Image.asset('images/unsplash_ILip77SbmOE.png'),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: Text(
                'Balance',
              ),
            ),
            const SizedBox(height: 12),
            Center(
              child: Text(
                '\$22,180.00',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomButton(
                  text: Text('Add'),
                ),
                SizedBox(width: 15.0),
                CustomButton(
                  text: Text('Withdraw'),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Divider(thickness: 2),
            const Padding(
              padding: EdgeInsets.only(
                  left: 20.0, top: 15.0, right: 17.0, bottom: 20.0),
              child: Text('Bank accounts'),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: _accounts.bankList.length,
                itemBuilder: (BuildContext context, int index) {
                  return AccountsListTileItem(
                      account: _accounts.bankList[index]);
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: 20.0, top: 10.0, right: 17.0, bottom: 0.0),
              child: Text('Cards'),
            ),
            SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: _cards.cardList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CardsListTileItem(
                        cards: _cards.cardList[index],
                      );
                    })),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
