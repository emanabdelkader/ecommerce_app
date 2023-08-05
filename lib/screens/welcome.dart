import 'package:coffee/screens/login.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              Image(image: AssetImage('assets/images/logo.jpg'),),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text("Coffee Beginnings",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown

                  ),

                ),
              ),
              Text("The ultimate refreshing drink",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.brown.withOpacity(.7)
              ),
              ),
              Text("to enjoy everyday.You can find ",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.brown.withOpacity(.7)
                ),
              ),
              Text("your tasty flavors.",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.brown.withOpacity(.7)
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                  right: 70,
                  left: 70
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.brown,

                  ),
                  width: double.infinity,

                  child: TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));

                  }, child: Text("Get Started",
                    style: TextStyle(
                      color: Colors.white

                    ),

                     )
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
