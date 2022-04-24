// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:personal_expenses/components/transaction_user.dart';
void main() => runApp(ExpensesApp());


class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Card(
                child: Text('Gráfico'),
                elevation: 5,
              ),
            ),
            TransactionUser(),
          ],
        ),
      )
    );
  }
}