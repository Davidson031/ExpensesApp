import 'package:expenses/models/transaction.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';


import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  //const TransactionList({Key? key}) : super(key: key);


  final List<Transaction> transactions;

  const TransactionList(this.transactions);


  @override
  Widget build(BuildContext context) {

    return Column(
            children: transactions.map((elemento){
              return Card(
                child: Row(
                  children: [
                    Container(  
                      margin: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        )
                      ), 
                      padding: EdgeInsets.all(10),            
                      child: Text(
                        'R\$ ${elemento.value.toString()}',                     
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold                            
                          ),
                          elemento.title
                          ),
                        Text(
                          DateFormat('d MMM y').format(elemento.date),
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                          
                          )
                      ],
                    )
                  ],
                )
              );
            }).toList(),
          );
    
  }
}