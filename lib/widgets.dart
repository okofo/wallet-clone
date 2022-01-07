import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 40,
        bottom: 20.0,
      ),
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
      onPressed: () {},
      child: text,
      style: ElevatedButton.styleFrom(
        primary: Colors.indigoAccent.shade700,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        fixedSize: const Size(130, 30),
      ),
    );
  }
}

class AccountsListTileItem extends StatelessWidget {
  final String? leading;
  final String? title;
  final String? subtitle;
  final String? trailing;

  const AccountsListTileItem({
    Key? key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        icon: Image.asset(leading ?? ''),
        onPressed: null,
      ),
      title: Text(title ?? ''),
      subtitle: Text(subtitle ?? ''),
      trailing: Text(trailing ?? ''),
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

class PageHeader extends StatelessWidget {
  final String? title;
  final double? bottom;
  const PageHeader({Key? key, this.title, this.bottom}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.0,
        right: 17.0,
        bottom: bottom ?? 20,
      ),
      child: Text(title ?? ""),
    );
  }
}
