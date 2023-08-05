import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee/screens/department.dart';
import 'package:coffee/screens/fav.dart';
import 'package:coffee/screens/nav.dart';
import 'package:coffee/screens/pro.dart';
import 'package:flutter/material.dart';

class Snack extends StatelessWidget {
  const Snack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:
      AppBar(
        backgroundColor:Color(0xffd1bea8).withOpacity(.1),
        leading:
        Padding(
          padding: const EdgeInsets.only(right: 10,),
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Colors.brown.withOpacity(.2),
            child: IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Departmant()));
            },
              icon: Icon(Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
                size: 20,
              ),
              alignment: Alignment.center,
            ),
          ),
        ),
        title:
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Center(
            child: const Text("Snack",
                // textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 40)),
          ),
        ),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 10,),
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Colors.brown.withOpacity(.2),
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
        ),],





      ),
      body:
      Container(
        child: FutureBuilder<QuerySnapshot<Map<String,dynamic>>>(
          future: FirebaseFirestore.instance.collection("snack").get(),
          builder: (context,snapShot){
            if(snapShot.connectionState==ConnectionState.waiting){
              return const Center(child: CircularProgressIndicator(),);
            }
            else if(snapShot.data==null){
              return const Center(child: Column(
                children: [
                  Text("is empty",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffd1bea8),
                      fontSize: 30
                  ),),
                ],
              ),);
            }else{
              List<Map<String,dynamic>> data =[];
              snapShot.data!.docs.forEach((element) {
                data.add(element.data());
              });
              return ListView.builder(
                  itemCount: data.length,
                  itemBuilder:(_,index){
                    return Padding(
                        padding: const EdgeInsets.only(right: 10,left: 10,top: 15),
                        child: Container(

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                color: Color(0xffd1bea8).withOpacity(.4)
                            ),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.all( Radius.circular(30)),

                                        child: Image.asset(data[index]['image'],fit: BoxFit.cover,height: 150,
                                          width: 150,)

                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(right: 3,left: 9),
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(data[index]['name'],
                                          style: TextStyle(fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.brown
                                          ),
                                        ),
                                        Container(
                                          width: 160,

                                          child: Text(data[index]['description'],
                                            style: TextStyle(
                                                color: Colors.brown.withOpacity(.5),
                                                fontSize: 13

                                            ),
                                          ),
                                        ),
                                        Row(
                                            children: [
                                              Container(
                                                width: 60,
                                                child: Text(data[index]['price'],
                                                  style: TextStyle(fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.brown
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 20),
                                                child: CircleAvatar(
                                                  radius: 17,
                                                  backgroundColor: Colors.brown.withOpacity(.4),
                                                  child: IconButton(onPressed: () {

                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Pro(name: data[index]['name'],
                                                        price: data[index]['price'],
                                                        image: data[index]['image'],
                                                        disc: data[index]['description'])));
                                                  },
                                                    icon: Icon(Icons.add,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                    alignment: Alignment.center,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 4,),
                                              CircleAvatar(
                                                radius: 17,
                                                backgroundColor: Colors.brown.withOpacity(.4),
                                                child: IconButton(onPressed: () {
                                                  FirebaseFirestore.instance.collection("fav").add({
                                                    'name':data[index]['name'],
                                                    'price':data[index]['price'],
                                                    'image':data[index]['image'],
                                                    'disc':data[index]['description'],
                                                  });
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Fav()));
                                                },
                                                  icon: Icon(Icons.favorite,
                                                    color: Colors.white,
                                                    size: 20,
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                              ),
                                            ]
                                        )
                                      ],
                                    ),
                                  )
                                ]
                            )
                        )
                    );
                    /* return Row(
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
                                      padding: const EdgeInsets.only(top: 10,bottom: 14,left: 70),
                                      child: Column(
                                        children: [
                                          Text(data[index]['name'],style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.brown,
                                              fontWeight: FontWeight.bold
                                          ),),
                                          Text("Excellent for fav"
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
                                          Navigator.push(context, MaterialPageRoute(
                                              builder: (context)=>Pro(name: data[index]['name'],
                                                  price: data[index]['price'],
                                                  image: data[index]['image'],
                                                  disc: data[index]['disc'])));
                                        },
                                          icon: Icon(Icons.add,
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
                                backgroundImage: AssetImage(data[index]['image'],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    );*/
                  } );
            }
          },

        ),
      ),
    );
  }
}
