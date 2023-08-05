import 'package:coffee/screens/chocolate.dart';
import 'package:coffee/screens/coffee.dart';
import 'package:coffee/screens/nav.dart';
import 'package:coffee/screens/snack.dart';
import 'package:coffee/screens/tea.dart';
import 'package:flutter/material.dart';

class Departmant extends StatelessWidget {
  const Departmant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children:<Widget>[
            SingleChildScrollView(
              child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 100,top: 20),
                      child: const Text("Menu",
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.brown,
                              fontWeight: FontWeight.bold,
                              fontSize: 40)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10,),
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.brown.withOpacity(.4),
                        child: IconButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Nave()));
                        },
                          icon: Icon(Icons.home_filled,
                            color: Colors.white,
                            size: 20,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),

                  ],
                ),

                Row(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20,bottom: 20,left: 60),
                          child: Container(
                            width: 260,
                            height: 95,
                            decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(45)),
                                  color: Color(0xffd1bea8).withOpacity(.4)
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10,bottom: 14,left: 60),
                                  child: Column(
                                    children: [
                                      Text("Coffee",style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.brown,
                                        fontWeight: FontWeight.bold
                                      ),),
                                      Text("You can get your fav"
                                        ,style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.brown.withOpacity(.6),
                                            fontWeight: FontWeight.bold
                                        ),),

                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 5),
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: Colors.brown.withOpacity(.3),
                                    child: IconButton(onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Coffee()));
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
                          padding: const EdgeInsets.only(top: 27,left: 34),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage('assets/images/a Coffee.jpeg',
                            ),
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
                          padding: const EdgeInsets.only(top: 20,bottom: 20,left: 60),
                          child: Container(
                            width: 260,
                            height: 95,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(45)),
                                color: Color(0xffd1bea8).withOpacity(.4)
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10,bottom: 10,left:60),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 4),
                                        child: Text("Chocolate",style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.brown,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      ),
                                      Text("You can get your fav"
                                        ,style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.brown.withOpacity(.6),
                                            fontWeight: FontWeight.bold
                                        ),),

                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 5),
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: Colors.brown.withOpacity(.3),
                                    child: IconButton(onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Chocolate()));
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
                          padding: const EdgeInsets.only(top: 27,left: 34),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage('assets/images/Chocolate Milkshake.jpeg',
                            ),
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
                          padding: const EdgeInsets.only(top: 20,bottom: 20,left: 60),
                          child: Container(
                            width: 260,
                            height: 95,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(45)),
                                color: Color(0xffd1bea8).withOpacity(.4)
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10,bottom: 14,left: 60),
                                  child: Column(
                                    children: [
                                      Text("Tea",style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.brown,
                                          fontWeight: FontWeight.bold
                                      ),),
                                      Text("You can get your fav"
                                        ,style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.brown.withOpacity(.6),
                                            fontWeight: FontWeight.bold
                                        ),),

                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 5),
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: Colors.brown.withOpacity(.3),
                                    child: IconButton(onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Tea()));
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
                          padding: const EdgeInsets.only(top: 27,left: 34),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage('assets/images/tea mint.jpeg',
                            ),
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
                          padding: const EdgeInsets.only(top: 20,bottom: 20,left: 60),
                          child: Container(
                            width: 260,
                            height: 95,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(45)),
                                color: Color(0xffd1bea8).withOpacity(.4)
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10,bottom: 14,left: 60),
                                  child: Column(
                                    children: [
                                      Text("Snack",style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.brown,
                                          fontWeight: FontWeight.bold
                                      ),),
                                      Text("You can get your fav"
                                        ,style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.brown.withOpacity(.6),
                                            fontWeight: FontWeight.bold
                                        ),),

                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 5),
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: Colors.brown.withOpacity(.3),
                                    child: IconButton(onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Snack()));
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
                          padding: const EdgeInsets.only(top: 27,left: 34),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage('assets/images/Spritz au chocolat.jpeg',
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
          ),
            ),
      ]
        ),
      ),
    );
  }
}
