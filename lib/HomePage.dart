import 'package:flutter/material.dart';
import 'package:rempro/Analytics.dart';
import 'package:rempro/MainHome.dart';
import 'package:rempro/TransactionPage.dart';
import 'package:rempro/contant/theme.dart';
import 'package:rempro/profilepage.dart';
import 'package:rempro/walletpage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

 int currentts = 0;
final List<Widget> _children = [
  MainHome(), // Home page
  WalletPage(),// , // Wallet page
  TransactionPage(), // Transaction page
  AnalyticsPage(), // Analyze page
  ProfilePage(), // Profile page
];
final List<String> _appBarTitles = [
  'Home',
  'Wallet',
  'Transactions',
  'Analyze',
  'Profile',
];
final List<Widget> _appBarActions = [

    Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Image.asset('images/profile.jpg', width: 40, height: 40),
    ),

  // [],
  // [],
  // [],
];

//_children[currentts],

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _children[currentts],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xFF2759D2),
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: currentts,
        onTap: (mycurrents) {
          setState(() {
            currentts = mycurrents;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Wallter',
          ),
          BottomNavigationBarItem(
            icon:
                Transform.translate(
                  offset: Offset(0, -30), // elevate the middle item by 20 units
                  child: Stack(
                    children: [
                    Container(
                      padding: const EdgeInsets.all(9),
                      child: SvgPicture.asset('assets/arrows.svg' , width: 27, height: 24,color: Colors.white,),
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Cprimarycolor, // custom color
                    ),
                  ),
                    ],
                  ), // icon color
                ),

            label: 'Trannsections',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            label: 'Analyze',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],

      ),
    );
  }
}