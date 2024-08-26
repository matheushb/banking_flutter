import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Conta'),
        ),
        body: Column(
          children: [
            const Card(
                color: Colors.white60,
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(32),
                  child: Text(
                    'Saldo: R\$ 3001.2',
                  ),
                )),
            Expanded(
                child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext ctx, int index) {
                return ListTile(
                  title: Text('Transação n${index + 1}'),
                  textColor: Colors.white70,
                  onTap: () {},
                );
              },
            ))
          ],
        ));
  }
}
