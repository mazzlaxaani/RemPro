import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        //leading: Icon(Icons.arrow_back),
        title: Text('Transaction'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Text('TransactionPage')
          ],
        ),
      ),
    );
  }
}