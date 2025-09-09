

import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile Card'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/profile2.jpg'),
                    fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                        offset: Offset(0,3),
                        ),
                        ],
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(top:30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 10,
                              offset: Offset(0, 5)
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage('lib/assets/profile.jpg'),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Elle Arz',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),
                            ),
                            SizedBox(height: 8),
                            Text('Mobile App Developer',
                            style:TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {},
                            child: Text ('Follow'),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal:32, vertical:12),
                              textStyle: TextStyle(fontSize: 16),
                            ),)
                            
                          ],
                        ),
                      )
                    ],
                ),

              ),
    );
  

  }
}