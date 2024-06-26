import 'package:flutter/material.dart';
import 'package:rempro/contant/theme.dart';
import 'package:gap/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        //leading: Icon(Icons.arrow_back),
        title: Text('Profile'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(12),

              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(foregroundImage: AssetImage(''),
                      radius: 50,
                    ),
                    Gap(12),
                    Text('Violet Huntington', style: TextStyle(color: Colors.black, fontSize: 28.0),),
                    Gap(5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('IBAN',style: TextStyle(color: Colors.black),),
                        Gap(10),
                        Text('A246 7901 3568 2345 6789 01356'),
                      ],
                    ),
                    Gap(20),
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Cprimarycolor, // Change this to your desired color
                        ),
                          onPressed: (){},
                          child: Text('Account Details'.toUpperCase(), style: TextStyle(color: Colors.white),),

                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(12),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              height: 120,
              padding: const EdgeInsets.all(12),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Container(
                      height: 80,
                      width: 80, // Add this line
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Color(0xFFEFF3FC),
                      ),
                    ),

                  SizedBox(width: 12), // Add this line for spacing
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,// Add this line
                        children: [
                          Text('Become a Platinum Member'),
                          SizedBox(height: 10), // Replace Gap with SizedBox
                          Text('Curabitur sollicitudin elit sapien and a  imperdiet felis semper eu.',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(color: Colors.black.withOpacity(0.3)),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gap(12),
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Column(

                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                child: SvgPicture.asset('assets/arrows.svg' , width: 27, height: 24,color: Colors.white,),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black.withOpacity(0.5)
                                ),
                                width: 55,
                                height: 55,
                                padding: const EdgeInsets.all(10),
                                alignment: Alignment.center,
                              ),
                              Text('svg svg')
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                child: SvgPicture.asset('assets/arrows.svg' , width: 27, height: 24,color: Colors.white,),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.black.withOpacity(0.5)
                                ),
                                width: 55,
                                height: 55,
                                padding: const EdgeInsets.all(10),
                                alignment: Alignment.center,
                              ),
                              Text('svg svg')
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Gap(12),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                child: SvgPicture.asset('assets/arrows.svg' , width: 27, height: 24,color: Colors.white,),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.black.withOpacity(0.5)
                                ),
                                width: 55,
                                height: 55,
                                padding: const EdgeInsets.all(10),
                                alignment: Alignment.center,
                              ),
                              Text('svg svg')
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                child: SvgPicture.asset('assets/arrows.svg' , width: 27, height: 24,color: Colors.white,),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.black.withOpacity(0.5)
                                ),
                                width: 55,
                                height: 55,
                                padding: const EdgeInsets.all(10),
                                alignment: Alignment.center,
                              ),
                              Text('svg svg')
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}