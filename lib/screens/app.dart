import 'package:coffee/screens/login.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20),
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Color(0xffd1bea8).withOpacity(.8),

                  )
              ),
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text("Home Coffee",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.brown
                    ),
                  ),
                  Text("App to buy coffee",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Text("Definition",
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 20
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 200,left: 20),
                    child: Divider(thickness: 2,color: Colors.brown),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25),
                    child: Text("Instead of wasting time waiting for your order and "
                        "errors that may occur from switching the order or errors in registering"
                        " your order now through this application, you can know what is"
                        " available and request what you want from it and determine"
                        " the appropriate time for you.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),

                  Row(
                    children: [
                      SizedBox(width: 24,),
                      Text("Thanks for using this app",
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 18
                        ),
                      ),
                      Icon(Icons.emoji_emotions_outlined,color: Colors.brown,),
                      Icon(Icons.star,color: Colors.brown,)
                    ],
                  ),
                  SizedBox(
                    height: 300,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));

                      }, child: Text("GO Back",
                        style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),)
                      ),
                      SizedBox(width: 16),
                    ],
                  )

                ],


              ),
            ]
        ),

      ),

    );
  }
}
