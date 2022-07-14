import 'dart:math';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({Key? key}) : super(key: key);

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  
  final _transactions = [

    Transaction(
      id: 't1',
      title: 'Novo tênis de corrida',
      value: 310.86,
      date: DateTime.now(),
    ),

    Transaction(
      id: 't2',
      title: 'Cinema',
      value: 70.10,
      date: DateTime.now(),
    )
  ];


  _adicionarTransaction(String titulo, double valor){

    final novaTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: titulo,
      value:  valor,
      date: DateTime.now(),
    );

    setState(() {
      
      _transactions.add(novaTransaction);

    });

  }
  
  
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        TransactionList(_transactions),
        TransactionForm(_adicionarTransaction)
      ],
    );
    
  }
}