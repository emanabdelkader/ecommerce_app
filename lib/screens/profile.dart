import 'package:coffee/screens/cart.dart';
import 'package:coffee/screens/fav.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children:[
          /* Container(
              decoration: BoxDecoration(

              ),
              height: 200,
              width: double.infinity,
              child:Image.asset("assets/images/download.jpeg",fit: BoxFit.cover,) ,
            ),*/
            ClipRRect(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(100),

                    ),
                child:
                Image(image: NetworkImage("https://i.pinimg.com/564x/55/93/0d/55930d6114ac3048c6439f120dc90efc.jpg",),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 197,)),
             // SizedBox(height: 90,),
            Padding(
              padding: const EdgeInsets.only(top: 120,left: 0),
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [

                  CircleAvatar(
                    radius: 60,
                    backgroundImage:NetworkImage('https://i.pinimg.com/564x/3b/e4/1a/3be41af619e98034f28552a09bb451bb.jpg') ,
                  ),
                  Padding(
                    padding:  EdgeInsetsDirectional.only(
                      bottom: 3,
                      top: 3,

                    ),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.brown.withOpacity(.9),
                      child: Icon(Icons.camera_alt,color: Colors.white,),
                    ),
                  ),

                ],
              ),
            ),

            Column(
              children: [
                SizedBox(height: 260,),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20,left: 40),
                                child: Container(
                                  width: 270,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(45)),
                                      color: Color(0xffd1bea8).withOpacity(.4)
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top:5,left:56),
                                        child: Column(
                                          children: [
                                            Text("cart"
                                              ,style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.brown.withOpacity(.6),
                                                  fontWeight: FontWeight.bold
                                              ),),

                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 133,top:2),
                                        child: CircleAvatar(
                                          radius: 18,
                                          backgroundColor: Colors.brown.withOpacity(.3),
                                          child: IconButton(onPressed: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                                          },
                                            icon: Icon(Icons.arrow_forward_ios_rounded,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 18,left: 36),
                                child: IconButton(onPressed: () {
                                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>Coffee()));
                                },
                                  icon: Icon(Icons.shopping_cart,
                                    color: Colors.brown,
                                    size:25,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10,bottom: 30,left: 40),
                                child: Container(
                                  width: 270,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(45)),
                                      color: Color(0xffd1bea8).withOpacity(.4)
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top:7,left:60),
                                        child: Column(
                                          children: [
                                            Text("Fav"
                                              ,style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.brown.withOpacity(.6),
                                                  fontWeight: FontWeight.bold
                                              ),),

                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 135,top:2),
                                        child: CircleAvatar(
                                          radius: 18,
                                          backgroundColor: Colors.brown.withOpacity(.3),
                                          child: IconButton(onPressed: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Fav()));
                                          },
                                            icon: Icon(Icons.arrow_forward_ios_rounded,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 36),
                                child: IconButton(onPressed: () {
                                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>Coffee()));
                                },
                                  icon: Icon(Icons.favorite,
                                    color: Colors.brown,
                                    size:25,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 40),
                                child: Container(
                                  width: 270,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(45)),
                                      color: Color(0xffd1bea8).withOpacity(.4)
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top:10,left:57),
                                        child: Column(
                                          children: [
                                            Text("Phone Number"
                                              ,style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.brown.withOpacity(.6),
                                                  fontWeight: FontWeight.bold
                                              ),),

                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 58,top:2),
                                        child: CircleAvatar(
                                          radius: 18,
                                          backgroundColor: Colors.brown.withOpacity(.3),
                                          child: IconButton(onPressed: () {
                                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>Coffee()));
                                          },
                                            icon: Icon(Icons.arrow_forward_ios_rounded,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 36),
                                child: IconButton(onPressed: () {
                                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>Coffee()));
                                },
                                  icon: Icon(Icons.phone,
                                    color: Colors.brown,
                                    size:27,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:10,left: 40),
                                child: Container(
                                  width: 270,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(45)),
                                      color: Color(0xffd1bea8).withOpacity(.4)
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top:10,left:60),
                                        child: Column(
                                          children: [
                                            Text("Password"
                                              ,style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.brown.withOpacity(.6),
                                                  fontWeight: FontWeight.bold
                                              ),),

                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 98,top:2),
                                        child: CircleAvatar(
                                          radius: 18,
                                          backgroundColor: Colors.brown.withOpacity(.3),
                                          child: IconButton(onPressed: () {
                                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>Coffee()));
                                          },
                                            icon: Icon(Icons.arrow_forward_ios_rounded,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 36),
                                child: IconButton(onPressed: () {
                                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>Coffee()));
                                },
                                  icon: Icon(Icons.lock,
                                    color: Colors.brown,
                                    size:28,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 40),
                                child: Container(
                                  width: 270,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(45)),
                                      color: Color(0xffd1bea8).withOpacity(.4)
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top:10,left:60),
                                        child: Column(
                                          children: [
                                            Text("Email"
                                              ,style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.brown.withOpacity(.6),
                                                  fontWeight: FontWeight.bold
                                              ),),

                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 128,top:2),
                                        child: CircleAvatar(
                                          radius: 18,
                                          backgroundColor: Colors.brown.withOpacity(.3),
                                          child: IconButton(onPressed: () {
                                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>Coffee()));
                                          },
                                            icon: Icon(Icons.arrow_forward_ios_rounded,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 36),
                                child: IconButton(onPressed: () {
                                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>Coffee()));
                                },
                                  icon: Icon(Icons.email,
                                    color: Colors.brown,
                                    size:28,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 40),
                                child: Container(
                                  width: 270,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(45)),
                                      color: Color(0xffd1bea8).withOpacity(.4)
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top:10,left:60),
                                        child: Column(
                                          children: [
                                            Text("Setting"
                                              ,style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.brown.withOpacity(.6),
                                                  fontWeight: FontWeight.bold
                                              ),),

                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 115,top:2),
                                        child: CircleAvatar(
                                          radius: 18,
                                          backgroundColor: Colors.brown.withOpacity(.3),
                                          child: IconButton(onPressed: () {
                                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>Coffee()));
                                          },
                                            icon: Icon(Icons.arrow_forward_ios_rounded,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 36),
                                child: IconButton(onPressed: () {
                                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>Coffee()));
                                },
                                  icon: Icon(Icons.settings,
                                    color: Colors.brown,
                                    size:30,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                )

              ],
            ),
         ],
        ),
      ),
    );
  }
}
