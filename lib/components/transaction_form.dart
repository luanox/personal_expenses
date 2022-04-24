
// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  TextField(
                    controller: titleController,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelText: 'Título:'
                    ),
                  ),
                  TextField(
                    controller: valueController,
                    decoration: InputDecoration(
                      labelText: 'Valor (R\$):'
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlatButton(
                        child: Text('Nova Transação'),
                        textColor: Colors.purple,
                        onPressed: () {
                          final title = titleController.text;
                          final value = double.tryParse(valueController.text) ?? 0.0;

                          onSubmit(title, value);
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
  }
}
