import 'package:flutter/material.dart';
import 'package:rempro/contant/theme.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class ForYour extends StatefulWidget {
  const ForYour({super.key});

  @override
  State<ForYour> createState() => _ForYourState();
}

class _ForYourState extends State<ForYour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('For your'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('In Progress',style: TextStyle(fontSize: 20),),
                Text('See All', style: TextStyle(color: Color(0xFF3A3C40),),),
              ],
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
                          child: SvgPicture.asset('assets/resturant.svg' , width: 27, height: 24,color: Cprimarycolor,),
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
                        Expanded(child: Text('Restaurant')),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Pending', style: TextStyle(color: Color(0xFF85878C)),),
                        )
                      ],
                    ),
                    padding: const EdgeInsets.all(12),
                  ),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: SvgPicture.asset('assets/shopping.svg' , width: 27, height: 24,color: Color(0xFF0A225E),),
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
                        Expanded(child: Text('Shopping')),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Pending', style: TextStyle(color: Color(0xFF85878C)),),
                        )
                      ],
                    ),
                    padding: const EdgeInsets.all(12),
                  ),
                  Divider(indent: 20,
                    endIndent: 20,),
                  Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: SvgPicture.asset('assets/cafe.svg' , width: 27, height: 24,color: Color(0xFFC57315),),
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
                        Expanded(child: Text('Cafe')),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Pending', style: TextStyle(color: Color(0xFF85878C)),),
                        )
                      ],
                    ),
                    padding: const EdgeInsets.all(12),
                  ),
                  Divider(indent: 20,
                    endIndent: 20,),
                  Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: SvgPicture.asset('assets/grocery.svg' , width: 27, height: 24,color: Color(0xFFC57315),),
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
                        Expanded(child: Text('Grocery')),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Pending', style: TextStyle(color: Color(0xFF85878C)),),
                        )
                      ],
                    ),
                    padding: const EdgeInsets.all(12),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                child: SvgPicture.asset('assets/bell.svg' , width: 30, height: 27,color: Cprimarycolor,),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color(0xFFEFF3FC)
                                ),
                                width: 55,
                                height: 55,
                                padding: const EdgeInsets.all(10),
                                alignment: Alignment.center,

                              ),
                              Gap(12),
                              Text('Price Alerts', style: TextStyle(fontSize: 18,color: Color(0xFF85878C)),)
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(right: 5),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                child: Icon(Icons.people_outline,size: 30,),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color(0xFFE3E3E3)
                                ),
                                width: 55,
                                height: 55,
                                alignment: Alignment.center,
                              ),
                              Gap(12),
                              Text('Members', style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(0.5)),),

                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

            ),
            Gap(12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Ckwhite
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Saved 12%'),
                      Text('\$120/\$1,200')
                    ],
                  ),
                  Gap(12),
                  Container(
                    child: FAProgressBar(
                      currentValue: 10,
                      maxValue: 100,
                      size: 20,
                      backgroundColor: Color(0xFFF5F5F7),
                      progressColor: Cprimarycolor,

                    ),
                  ),
                  Gap(12),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Deadline',style: TextStyle(color: Color(0xFF85878C), fontSize: 20),),
                        Container(
                          child: IntrinsicHeight(
                            child: Row(
                              children: [
                                Container(
                                  child: Text('17 Aug 2023', style: TextStyle(
                                      color: Color(0xFF85878C)
                                  ),),
                                ),
                                Gap(5),
                                VerticalDivider(
                                  width: 1, // changed width to 1
                                  thickness: 1,
                                  indent: 2.2, // changed indent to 0
                                  endIndent: 2.2, // changed endIndent to 0
                                  color: Colors.black,
                                ),
                                Gap(5),
                                Container(child: Text('240 days to go', style: TextStyle(color: Color(0xFF85878C),),))
                              ],
                            ),
                          )
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
