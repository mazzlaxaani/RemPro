import 'package:flutter/material.dart';
import 'package:rempro/contant/theme.dart';
import 'package:gap/gap.dart';
import 'package:volume_controller/volume_controller.dart';


class BankAccount extends StatefulWidget {
  const BankAccount({super.key});


  @override
  State<BankAccount> createState() => _BankAccountState();
}
double _volume = 0.5;

class _BankAccountState extends State<BankAccount> {
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
            Gap(12),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Ckwhite,
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('\$0.00', style: TextStyle(fontSize: 23),),
                              Text('In Assets', textAlign: TextAlign.center,)
                            ],
                          ),
                        ),
                        ),

                        Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                Text('\$0.00',style: TextStyle(fontSize: 23),),
                                Text('In Debit'),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                    Gap(12),
                    Divider(),
                    Gap(10.0),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: SliderTheme(
                              data: SliderThemeData(
                                activeTrackColor: Cprimarycolor, // Color of the active track
                                inactiveTrackColor: Colors.grey, // Color of the inactive track
                                thumbColor: Cprimarycolor, // Color of the thumb
                              ),
                              child: Slider(
                                value: _volume,
                                onChanged: (value) async {
                                  setState(() {
                                    _volume = value;
                                  });
                                  //await VolumeController.setVolume(value);
                                },
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}

