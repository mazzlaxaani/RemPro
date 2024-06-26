import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}


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
                color: Colors.black.withOpacity(0.05),
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: Container(

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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