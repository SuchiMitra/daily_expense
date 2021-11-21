import 'package:daily/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

void main() => runApp(Subarna());

class Subarna extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'Apple',
      amount: 500,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Blackberry',
      amount: 1000,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Grape',
      amount: 400,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Lemon',
      amount: 100,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Daily Expense'),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(15),
                child: Card(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Chart',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 8,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Product',
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Ammount',
                        ),
                      ),
                      RaisedButton(
                        hoverColor: Colors.white54,
                        color: Colors.teal,
                        onPressed: () {},
                        child: Text(
                          'Add Transaction',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: transactions.map((tx) {
                  return Card(
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.red),
                          ),
                          child: Text(
                            '\$${tx.amount}',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tx.title,
                            ),
                            Text(DateFormat.yMMMEd().format(tx.date)),
                          ],
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
