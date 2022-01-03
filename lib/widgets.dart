import 'package:flutter/material.dart';
import 'package:wallet_clone/model/bank_model.dart';

import 'model/card_model.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {Key? key, required this.text, required this.icon, required this.avatar})
      : super(key: key);

  final Widget text;
  final Widget icon;
  final Widget avatar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 20.0, right: 20.0, top: 40, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [text, const Spacer(), icon, avatar],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final Widget text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      child: text,
      style: const ButtonStyle(),
    );
  }
}

class AccountsListTileItem extends StatelessWidget {
  final Account account;
  const AccountsListTileItem({
    Key? key,
    required this.account,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        icon: Image.asset(account.logo ?? ''),
        onPressed: null,
      ),
      title: Text(account.name ?? ''),
      subtitle: Text(account.accountNumber ?? ''),
      trailing: Text(account.amount ?? ''),
    );
  }
}

class CardsListTileItem extends StatelessWidget {
  final Cards cards;
  const CardsListTileItem({
    Key? key,
    required this.cards,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(icon: Image.asset(cards.logo ?? ''), onPressed: null),
      title: Text(cards.name ?? ''),
      subtitle: Text(cards.cardNumber ?? ''),
      trailing: Text(cards.amount ?? ''),
    );
  }
}
