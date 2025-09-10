import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //Username Field 
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "email",
              ),
            ),
            SizedBox(height: 16),
            //TextField
            TextField(
              obscureText: true,
              decoration:InputDecoration(
                border: OutlineInputBorder(),
                  labelText:"password"
                )

              ) ,
              SizedBox(height: 10),
              //Login

              ElevatedButton(
                onPressed: () {
                  print("Login pressed");
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size (double.infinity, 50),

                ),
                child: Text("Login"),
                ),

                SizedBox(height: 10),
                FilledButton(
                  onPressed: () {
                    print("Filled Button is pressed");
                  }, 
                  style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                //backgroundColor: Colors.amber,
              ),
                  child: Text("Sign Up"),
                  ),
                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {}, 
                        icon: Icon(Icons.facebook),
                        color: Colors.blue,
                      
                        ),
                        // SizedBox(width: 20),
                        IconButton(
                          onPressed: () {},
                           
                          icon: Icon(Icons.email),
                          color: Colors.purple),
                        IconButton(onPressed: () {},
                         icon: Icon(Icons.phone),
                         color: Colors.purple,),

                    ],
                  )
      
            


          ],

        )),
        
    );
  }

}