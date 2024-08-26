import 'package:banking_with_dart/pages/bank_account_page.dart';
import 'package:flutter/material.dart';

class BankApp extends StatelessWidget {
  const BankApp({super.key});

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      title: 'Banking With Dart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const AccountPage(),
    );
  }
}
