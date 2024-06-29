import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';
import 'package:rempro/contant/theme.dart';


class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Home'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: CircleAvatar(foregroundImage: AssetImage('images/profile.jpg'),),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(

              ),
              accountName: Text('Mazzlaxaani' , style: TextStyle(color: Colors.black),),
              accountEmail: Text('+252 617 869379',style: TextStyle(color: Colors.black),),
              currentAccountPicture: CircleAvatar(foregroundImage: AssetImage('images/profile.jpg',),
              ),
            ),
            ListTile(
              title: Text('New Groupe'),
              leading: Icon(Icons.group_add_outlined),
            ),

            ListTile(
              title: Text('Contant'),
              leading: Icon(Icons.person_outline),
            ),

            ListTile(
              title: Text('Call'),
              leading: Icon(Icons.call_outlined),
            ),

            ListTile(
              title: Text('People Nearby'),
              leading: Icon(Icons.person_pin_circle_outlined),
            ),
            ListTile(
              title: Text('Saved Messages'),
              leading: Icon(Icons.bookmark_outline),
            ),
            Divider(),
            ListTile(
              title: Text('Invite Friend'),
              leading: Icon(Icons.person_add_outlined),
            ),ListTile(
              title: Text('Camaldoon'),
              leading: Icon(Icons.help_outline),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
                color: Ckwhite,
                height: 80,
                width: double.infinity,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('\$7,500.00',
                        style: TextStyle(fontSize: 25.0,),
                      ),
                      Text("0,745274 Btc")
                    ],
                  ),

            ),
            Gap(15),
            Card(
              color: Cprimarycolor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                side: BorderSide(color: Cprimarycolor, width: 2),
              ),
              child: Container(
                height: 180,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              margin: const EdgeInsets.all(8.0),
                              width: 50.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white24.withOpacity(0.2),
                              ),

                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                            child: Text('Virtu Vanguard', style: TextStyle(color: Colors.white24),))
                      ],
                    ),
                    Expanded(
                      child: SizedBox.shrink(), // This will take up the available space
                    ),
                    Column(
                        children:[ Container(
                          alignment: Alignment.center,
                          child: Text('6574 **** **** 8392',textAlign: TextAlign.center, style: TextStyle(fontSize: 30.0, color: Colors.white),),
                        ),
                        ]
                    ),
                    Expanded(
                      child: SizedBox.shrink(), // This will take up the available space
                    ),
                    Column(
                        children:[ Container(
                          padding: const EdgeInsets.all(8.0),
                          alignment: Alignment.bottomLeft,
                          child: Text('Camden Lockwood',textAlign: TextAlign.center, style: TextStyle(fontSize: 18.0, color: Colors.white24),),
                        ),
                        ]
                    )
                  ],
                ),
              ),
            ),
            Gap(15),

            Container(
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12)
              ),
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) =>  Card(
                margin: EdgeInsets.only(left: 16.0),
                child: Container(
                  padding: EdgeInsets.only(top: 10.0),
                  width: 80,
                  height: 130.0,
                  child: Column(
                    children: [
                      CircleAvatar(
                        foregroundImage: AssetImage(''),
                        foregroundColor: Colors.black,
                      ),
                      Gap(10),
                      Text('lily\nEvarhart',textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              ),
              ),
            ),

            Gap(15),
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
            Gap(10),

          ],
        ),
      ),
    );
  }
}
