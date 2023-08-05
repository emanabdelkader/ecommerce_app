import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee/screens/cart.dart';
import 'package:coffee/screens/home.dart';
import 'package:coffee/screens/nav.dart';
import 'package:flutter/material.dart';

class Pro extends StatefulWidget {

  final String name;
  final String price;
  final String image;
  final String disc;
  Pro({required this.name ,required this.price ,required this.image,required this.disc });


  @override
  State<Pro> createState() => _ProState();
}

class _ProState extends State<Pro> {

  int quantity = 1;
  final _firestore =FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)
                        ,bottomRight:  Radius.circular(20)),
                    child:
                    Image(image: AssetImage("${widget.image}",),
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 350,)),

                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 14),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.brown.withOpacity(.4),
                    child: IconButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Nave()));
                    },
                      icon: Icon(Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 13,right: 14,bottom: 5),
              child: Row(
                children: [
                  Expanded(
                    child: Text("${widget.name}",
                      style: TextStyle(fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown
                      ),
                    ),
                  ),
                  SizedBox(width: 101,),
                  Text("${widget.price}",
                    style: TextStyle(fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.green
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Text("${widget.disc}",
                style: TextStyle(
                    color: Colors.brown.withOpacity(.5),
                    fontSize: 16
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20,left: 20),
              child: Divider(thickness: 1,color: Colors.brown.withOpacity(.3)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 19),
                  child: Text("select size"
                  ,style: TextStyle(
                        color: Colors.brown,
                        fontSize: 20,
                      fontWeight: FontWeight.bold

                    ),),
                ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Expanded(
                    child: IconButton(onPressed: (){
                      setState(() {

                      });

                    },
                      icon:Icon(Icons.coffee_rounded,size: 30,color: Colors.brown.withOpacity(.5),), ),
                  ),
                  Expanded(
                    child: IconButton(onPressed: (){
                    },
                      icon:Icon(Icons.coffee_rounded,size: 40,color: Colors.brown.withOpacity(.5),), ),
                  ),
                  Expanded(
                    child: IconButton(onPressed: (){
                    },
                      icon:Icon(Icons.coffee_rounded,size: 50,color: Colors.brown.withOpacity(.5),), ),
                  ),
                  Expanded(
                    child: IconButton(onPressed: (){
                    },
                      icon:Icon(Icons.coffee_rounded,size: 60,color: Colors.brown.withOpacity(.5),), ),
                  )
                ],
              ),
                Row(

                  children: [
                    Expanded(
                      child: Center(
                        child: Text("small"
                          ,style: TextStyle(
                              color: Colors.brown.withOpacity(.5),
                              fontSize: 15,
                              fontWeight: FontWeight.bold

                          ),),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text("medium"
                          ,style: TextStyle(
                              color: Colors.brown.withOpacity(.5),
                              fontSize: 15,
                              fontWeight: FontWeight.bold

                          ),),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text("large"
                          ,style: TextStyle(
                              color: Colors.brown.withOpacity(.5),
                              fontSize: 15,
                              fontWeight: FontWeight.bold

                          ),),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text("grand"
                          ,style: TextStyle(
                              color: Colors.brown.withOpacity(.5),
                              fontSize: 15,
                              fontWeight: FontWeight.bold

                          ),),
                      ),
                    ),

                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20,left: 20),
              child: Divider(thickness: 1,color: Colors.brown.withOpacity(.3)),
            ),
           Row(
            // crossAxisAlignment: CrossAxisAlignment.baseline,
             //textBaseline: TextBaseline.alphabetic,
             children: [
               Expanded(
                 child: Column(
                   children: [
                     const Text("Quantity",
                       style: TextStyle(
                           color: Colors.brown,
                           fontSize: 17
                       ),),


                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         SizedBox(
                           width: 40,
                           height: 40,
                           child: FittedBox(
                             child: FloatingActionButton(
                               heroTag: 'sub',
                               backgroundColor: Colors.brown.withOpacity(.2),
                               foregroundColor: Colors.white,
                               shape: BeveledRectangleBorder(
                                 borderRadius: BorderRadius.circular(12)
                               ),
                               onPressed: (){
                               setState(() {
                                 quantity--;
                               });
                             },
                               mini: true,
                               child: Icon(Icons.remove),
                             ),
                           ),
                         ),
                         SizedBox(width: 5,),
                         Text(
                           "$quantity",
                           style: const TextStyle(
                               fontSize: 40,
                               fontWeight: FontWeight.bold,
                               color: Colors.brown
                           ),
                         ),
                         SizedBox(width: 5,),
                         SizedBox(
                           width: 40,
                           height: 40,
                           child: FittedBox(
                             child: FloatingActionButton(
                               heroTag: 'add',
                               backgroundColor: Colors.brown.withOpacity(.2),
                               foregroundColor: Colors.white,
                               shape: BeveledRectangleBorder(
                                   borderRadius: BorderRadius.circular(12)
                               ),
                               onPressed: (){
                               setState(() {
                                 quantity++;
                               }
                               );
                             },
                               mini: true,
                               child: Icon(Icons.add),),
                           ),
                         ),

                       ],
                     ),
                   ],
                 ),
               ),
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.only(right: 20,left: 75,top: 25),
                   child: ElevatedButton(
                     style: TextButton.styleFrom(
                       shape: StadiumBorder(),
                      // padding: const EdgeInsets.all(1),
                       backgroundColor:  Colors.green,
                     ),
                     onPressed: () {
                       _firestore.collection("cart").add({
                         'name':widget.name,
                         'price':widget.price,
                         'image':widget.image,
                         'disc':widget.disc,
                       });
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
                     },
                     child: const Text(
                       "Buy",
                       style: TextStyle(
                         fontSize: 25,
                         color: Colors.white,
                       ),

                     ),

                   ),
                 ),
               ),

             ],
           ),
          ],
        ),
      ),
    );
  }
}
