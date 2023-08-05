import 'package:coffee/screens/app.dart';
import 'package:flutter/material.dart';

class Developer extends StatelessWidget {
  const Developer({Key? key}) : super(key: key);

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
                Text("Eman Abdelkader",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white

                ),
                ),
                Text("Software Program Developer",
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
                      Text("Profile",
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
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Flutter Developer and a core technical android developing",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    //Icon(Icons.cast_for_education_rounded),
                    Text("Education",
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

                Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text("FCIS",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25
                      ),
                    ),
                    Text(" mansora universty",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),

                    Text("Gmail",
                      style: TextStyle(
                          color: Colors.brown,
                          fontSize: 20
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.email,color: Colors.brown,size: 16,)

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200,left: 20),
                  child: Divider(thickness: 2,color: Colors.brown),
                ),

                Row(
                  children: [
                    SizedBox(width: 24,),
                    Text("to send any feedback",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    SizedBox(width: 24,),
                    Icon(Icons.email,color: Colors.brown,size: 16,),
                    SizedBox(width: 8,),
                    Text("emanabdelkager1632@gmail.com",
                      style: TextStyle(
                          color: Colors.brown,
                          fontSize: 18
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 140,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const App()));

                    }, child: Text("Learn more about app",
                      style: TextStyle(color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),)),
                    SizedBox(width: 20,)
                  ],
                ),

              ],


          ),
        ]
        ),

      ),

    );
  }
}
