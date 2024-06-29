import 'package:flutter/material.dart';
import 'package:rempro/contant/theme.dart';
import 'package:gap/gap.dart';
import 'package:volume_controller/volume_controller.dart';
import 'package:flutter_svg/svg.dart';


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
        backgroundColor: Ckwhite,
        title: Text('Bank Accounts'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
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
                      IntrinsicHeight(
                        child: Row(
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
                            VerticalDivider(
                              width: 1, // changed width to 1
                              thickness: 1,
                              indent: 2.2, // changed indent to 0
                              endIndent: 2.2,
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
                                  thumbColor: Cprimarycolor,
        
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
                      Divider(),
                      Gap(12),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.only(right: 5),
                                child: Text('1D'),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xFFE3E3E3)
                                ),
                                width: 55,
                                height: 55,
                                padding: const EdgeInsets.all(15),
                                alignment: Alignment.center,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text('1W'),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xFFE3E3E3)
                                ),
                                width: 55,
                                height: 55,
                                padding: const EdgeInsets.all(15),
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(right: 5),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text('1M', style: TextStyle(color: Ckwhite),),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Cprimarycolor
                                ),
                                width: 55,
                                height: 55,
                                padding: const EdgeInsets.all(15),
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(right: 5),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text('3M'),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xFFE3E3E3)
                                ),
                                width: 55,
                                height: 55,
                                padding: const EdgeInsets.all(15),
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(right: 5),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text('1Y'),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xFFE3E3E3)
                                ),
                                width: 55,
                                height: 55,
                                padding: const EdgeInsets.all(15),
                                alignment: Alignment.center,
                              ),
                            ),
        
        
                          ],
                        ),
                      ),
        
                    ]
                ),
              ),
              Gap(12),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Ckwhite
                ),
                child: Column(
                  children: [
                    Container(
        
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: SvgPicture.asset('assets/dollar.svg' , width: 27, height: 24,color: Cprimarycolor,),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xFFEFF3FC)
                            ),
                            width: 45,
                            height: 45,
                            padding: const EdgeInsets.all(12),
                            alignment: Alignment.center,
                          ),
                          Gap(12),
                          Expanded(child: Text('Not ready yet? Try demo mode')),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(Icons.arrow_forward_ios, size: 20,),
                          )
                        ],
                      ),
                      padding: const EdgeInsets.all(12),
                    ),
                    Divider(),
                    Container(
        
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: SvgPicture.asset('assets/resend.svg' , width: 27, height: 24,color: Color(0xFF0A225E),),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xFFE3E3E3)
                            ),
                            width: 45,
                            height: 45,
                            padding: const EdgeInsets.all(12),
                            alignment: Alignment.center,
                          ),
                          Gap(12),
                          Expanded(child: Text('Hot to send money?')),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(Icons.arrow_forward_ios, size: 20,),
                          )
                        ],
                      ),
                      padding: const EdgeInsets.all(12),
                    ),
                    Divider(),
                    Container(
        
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: SvgPicture.asset('assets/tick.svg' , width: 27, height: 24,color: Color(0xFFC57315),),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xFFF5E9DB)
                            ),
                            width: 45,
                            height: 45,
                            padding: const EdgeInsets.all(12),
                            alignment: Alignment.center,
                          ),
                          Gap(12),
                          Expanded(child: Text('Why did stocks climb 30%?')),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(Icons.arrow_forward_ios, size: 20,),
                          )
                        ],
                      ),
                      padding: const EdgeInsets.all(12),
                    ),
                  ],
                ),
              ),
              Gap(12),
              Container(
                width: double.infinity,
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Container(
                      width: 250,
                      margin: const EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                        color: Ckwhite,
                        borderRadius: BorderRadius.circular(12.0),
        
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Transfer To Dominic',overflow: TextOverflow.ellipsis,
                            maxLines: 1,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        
                          Container(
                            decoration: BoxDecoration(
        
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(0xFFFBE8E8),
                            ),
                            padding: const EdgeInsets.all(8),
        
                            child: Text('-\$350.00',style: TextStyle(fontSize: 22, color: CKRed),),),
                          Gap(12),
                          Text('10:45 Am')
                        ],
                      ),
                    ),
        
                    Container(
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Ckwhite,
        
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Top up Via *246 ',overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(0xFFDBF4E6),
                            ),
                            padding: const EdgeInsets.all(8),
        
                            child: Text('+\$500.00',style: TextStyle(fontSize: 22, color: CKgreen),),),
                          Gap(12),
                          Text('10:45 Am')
                        ],
                      ),
                    ),
        
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

