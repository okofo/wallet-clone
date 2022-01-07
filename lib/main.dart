import 'package:flutter/material.dart';
import 'package:wallet_clone/provider/banks_provider.dart';
import 'package:wallet_clone/provider/cards_provider.dart';
import 'package:wallet_clone/screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => BankProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CardsProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Wallet Clone',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const MyHomePage(title: 'Wallet clone'),
      ),
    );
  }
}
