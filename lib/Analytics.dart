import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
                ]
              ),
            )
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
              sideTitles: SideTitles(showTitles: false),
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