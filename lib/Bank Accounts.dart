import 'package:flutter/material.dart';
import 'package:rempro/contant/theme.dart';
import 'package:gap/gap.dart';

class BankAccount extends StatelessWidget {
  const BankAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bank Accounts'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Ckwhite
              ),
              width: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Expanded(
                      child: Text('Link Credit Card or Debit Card'),
                  ),
                  Container(
                      child: Icon(Icons.add, color: Cprimarycolor,),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFE3E3E3)
                      ),
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                    ),
                ],
              ),
            ),
            Gap(12)
          ],
        ),
      ),
    );
  }
}
