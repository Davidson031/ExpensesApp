

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:expenses/models/transaction.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:expenses/components/transaction_user.dart';

main(){
  runApp(ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: MyHomePage(),
    );
    
  }
}


class MyHomePage extends StatelessWidget {
   MyHomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Weekly spend'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.yellow,
              elevation: 5,
              child: Text('Gráfico'),
            ),
          ),

         TransactionUser(),
          
          
        ],
      ),
    );
    
  }
}