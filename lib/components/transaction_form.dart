import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  //const TransactionForm({Key? key}) : super(key: key);


  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  //controladores dos textfields
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                      labelText: 'Titulo',
                    ),
                  ),
                  TextField(
                    controller: valueController,
                    decoration: InputDecoration(
                      labelText: 'Valor (R\$)',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                            child: const Text(
                              'Nova Transação',
                              style: TextStyle(
                                color: Colors.purple,
                              ),
                            ),
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