import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rempro/ForYou.dart';
import 'package:rempro/contant/theme.dart';
import 'package:fl_chart/fl_chart.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}
String ku = '15-20';
List<String> parts = ku.split('-');
Double uk1 = double.parse(parts[0]) as Double;
Double uk2 = double.parse(parts[1]) as Double;

class _AnalyticsPageState extends State<AnalyticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        //leading: Icon(Icons.arrow_back),
        title: Text('Analytics'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
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
                            Text('Total Spend', style: TextStyle(fontSize: 23),),
                            Text('\$500.00', textAlign: TextAlign.center,)
                          ],
                        ),
                      ),
                      ),
                      Gap(12.0),
                      VerticalDivider(width: 10,
                        color: Colors.red,),

                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Text('Date',style: TextStyle(fontSize: 23),),
                              Text('15 July - 24 Aug'),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                  Gap(12),
                  Divider(),
                  Gap(12.0),
                  Container(
                    child: BarChartSample1(),
                  ),
                  Divider(),
                  Container(
                    padding: const EdgeInsets.only(left: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Cprimarycolor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              Gap(12),
                              Text('Regular Spend'),
                            ],
                          ),
                        ),

                        Gap(12),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Color(0xFFECEDF0),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              Gap(12),
                              Text('Regular Spend'),
                            ],
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
                color: Ckwhite,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Activity',style: TextStyle(fontSize: 20),),
                      Text('See All', style: TextStyle(color: Color(0xFF3A3C40),),),
                    ],
                  ),
                  Gap(12),
                  Container(
                    width: double.infinity,
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          width: 155,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.black.withOpacity(0.1),
                          ),
                          child: Row(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text('Astra Luxus',overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                        color: Color(0xFFDBF4E6),
                                      ),
                                      padding: const EdgeInsets.all(8),

                                      child: Text('+\$18.90',style: TextStyle(fontSize: 22, color: CKgreen),),),
                                    Gap(12),
                                    Text('09:00 Am', textAlign: TextAlign.center,),
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),

                              ),

                            ],

                          ),
                        ),
                        Gap(12),
                        Container(
                          padding: const EdgeInsets.all(12),
                          width: 155,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.black.withOpacity(0.1),
                          ),
                          child: Row(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text('Visionary',overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                        color: Color(0xFFFBE8E8),
                                      ),
                                      padding: const EdgeInsets.all(8),

                                      child: Text('-\$15.42',style: TextStyle(fontSize: 22, color: Color(0xFFDE1A1A)),),),
                                    Gap(12),
                                    Text('01:20 PM', textAlign: TextAlign.center,),
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),

                              ),

                            ],

                          ),
                        ),
                        Gap(12),
                        Container(
                          width: 155,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.black.withOpacity(0.1),
                          ),
                          child: Row(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text('Catalyst',overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                        color: Color(0xFFDBF4E6),
                                      ),
                                      padding: const EdgeInsets.all(8),

                                      child: Text('+\$23.50',style: TextStyle(fontSize: 22, color: Color(0xFF1EB15F)),),),
                                    Gap(12),
                                    Text('01:20 PM', textAlign: TextAlign.center,),
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),

                              ),

                            ],

                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Gap(12),
            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Cprimarycolor, // Change this to your desired color
                ),
                onPressed: (){

                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ForYour(),
                    ),
                  );
                },
                child: Text('For you'.toUpperCase(), style: TextStyle(color: Colors.white),),

              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BarChartSample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: BarChart(
        BarChartData(
          //maxY: 20,
          barTouchData: BarTouchData(
            enabled: false,
          ),
          titlesData: const FlTitlesData(
            show: true, // Show titles
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: true),
            ) ,
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ), // Show bottom titles// Show left titles
          ),
          borderData: FlBorderData(
              show: false
          ),
          backgroundColor: Colors.transparent,
          gridData: FlGridData(show: false),

          barGroups: [
            BarChartGroupData(
              x: 22,
              barRods: [
                BarChartRodData(toY: 18, color: Colors.blue, width: 20, // Change the width of the bar
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10),),)
              ],
            ),
            BarChartGroupData(
              x: 30,
              barRods: [
                BarChartRodData(toY: 12, color: Colors.blue,width: 20, // Change the width of the bar
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10),),),
              ],
            ),
            BarChartGroupData(
              x: 2,
              barRods: [
                BarChartRodData(toY: 15, color: Colors.blue,width: 20, // Change the width of the bar
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10),),)
              ],
            ),
            BarChartGroupData(
              x: 3,
              barRods: [
                BarChartRodData(toY: 10, color: Colors.grey.shade200,width: 20, // Change the width of the bar
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10),),)
              ],
            ),
            BarChartGroupData(
              x: 4,
              barRods: [
                BarChartRodData(toY: 8, color: Colors.grey.shade200,width: 20, // Change the width of the bar
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10),),)
              ],
            ),
          ],
          //maxY: 20,
        ),
      ),
    );
  }
}