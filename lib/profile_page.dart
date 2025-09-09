import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage ({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile Page",
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        ),

        body: Column(
          children: [
            SizedBox(height: 20),
            Text('Elle Arz', style: TextStyle(fontSize: 18, fontFamily: "Roboto", color: Colors.black12),),
            SizedBox(height: 10),
            Text('Mobile Developer Expert', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.deepPurple),),

            SizedBox(height: 60),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.facebook),
                  ),
                IconButton(
                  onPressed: () {}, 
                  icon: Icon(Icons.email),
                  ),
                IconButton(
                  onPressed: () {}, 
                  icon: Icon(Icons.phone),
                  ),

              ],
            ),
            SizedBox(height: 20),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl8Omfo3fLBKQrIA8EfXcxhf9S_gBt33iY9Q&s",
            width: 400,
            height: 300,
            fit: BoxFit.fill)

          ],

        ),
      
    );
  }
}