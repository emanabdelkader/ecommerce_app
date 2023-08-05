
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee/creat/productModel.dart';
import 'package:coffee/creat/userModel.dart';
import 'package:coffee/provider/APIprovider.dart';
import 'package:coffee/screens/department.dart';
import 'package:coffee/screens/fav.dart';
import 'package:coffee/screens/pro.dart';
import 'package:flutter/material.dart';
//import 'package:searchfield/searchfield.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isloading = true;

  UserModel? userModel;
  ProModel? proModel;

  getUser() async {
    userModel = await APIProvider().readUser();
    setState(() {
      isloading = false;
    });
  }

  @override
  void initState() {
    getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: isloading
          ? Center(
        child: CircularProgressIndicator(),
      ) :
      SafeArea(
        child:  Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16,),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(//"Welcome,${userModel?.name}!",
                              "Welcome,Dear!",
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25)),
                          Text("your daily coffee needs",
                            style: TextStyle(
                                color: Colors.brown.withOpacity(.6),
                                fontSize: 20
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 110,bottom: 20),
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.brown.withOpacity(.2),
                          child: IconButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Departmant()));
                          },
                            icon: Icon(Icons.list_rounded,
                              color: Colors.white,
                              size: 20,
                            ),
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffd1bea8).withOpacity(.7),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Row(
                      children: [

                        IconButton(onPressed: () {
                          showSearch(
                            context: context,
                            delegate: CustomSearchlegate(),
                          );
                        },
                            icon: Icon(Icons.search_rounded,
                              color: Colors.white,
                              size: 25,
                            )),
                        Text('Search',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white

                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  const Text("Available",
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
              SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
              children: [
                pro(name: "Cappuccino", price: "\$10" , image: 'assets/images/cwm (2).jpg',
                    disc: "milk,extra vet,ground dark roast coffee and some of water extra finely-ground coffee.Turkish coffee suger is optional."),
                pro(name: "Turkish", price: "\$9" , image: 'assets/images/tc.jpeg',
                disc:"water. extra finely-ground coffee.Turkish coffee. sugar, optional,milk,extra vet,ground dark roast coffee and some of water" ),
                pro(name: "Americano", price: "\$6.8" , image: 'assets/images/a Coffee.jpeg',
                    disc: " shot Americano can mostly fit in an espresso mug. Make the espresso milk,extra vet,ground dark roast coffee and some of water."),
                pro(name: "Pharppucino", price: "\$12" , image: 'assets/images/pharppucino.jpg',
                    disc:"pharppucino drink that consists of espresso with steamed milk and foam with a milkshake or milkshake milk,,ground dark roast coffee." ),
                pro(name: "Dalgonat", price: "\$10.7" , image: 'assets/images/dalgonat.jpg',
                disc: " combine sugar, coffee, and water. then continue whisking until it foamy milk,extra vet,ground dark roast coffee and some of water. "),

                pro(name: "Grean Tea", price: "\$2" , image: 'assets/images/Green tea with green, and lemon.jpeg',
                    disc: "Green tea with green, and lemon  combined with various kinds of herbs and a variety of spices. This is a popular way ."),

                pro(name: "Red Tea", price: "\$1.25" , image: 'assets/images/tea.jpg',
                    disc: " tea and water. The term red tea is used for both hot and cold drinks original tea ea in India and Pakistan and referred to as chai."),

                pro(name: "Heal Tea", price: "\$3" , image: 'assets/images/teah.webp',
                    disc: "combination of tea and heal. The term heal tea is used for both hot and cold drinks that can be combined with various kinds of Heals"),

                pro(name: "OreoMilkshake", price: "\$11.7" , image: 'assets/images/Oreo Milkshake.jpeg',
                    disc: "combine sugar, coffee, and water. then continue whisking until it foamy milk,extra vet,ground dark roast coffee and some of water."),

                pro(name: "Milkshake", price: "\$10" , image: 'assets/images/Chocolate Milkshake.jpeg',
                    disc: "combine sugar, coffee, and water. then continue whisking until it foamy milk,extra vet,ground dark roast coffee and some of water."),


                pro(name: "Hot Chocolate", price: "\$3" , image: 'assets/images/Hot Chocolate dark.jpeg',
                    disc: "drink that consists of espresso with steamed milk and foam with a milkshake or milkshake milk,,ground dark roast chocolate."),


                pro(name: "Spritz", price: "\$0.3" , image: 'assets/images/Spritz au chocolat.jpeg',
                    disc: "Granolas filling , and while there are an endless number of ways to approach baking a cinnamon roll, recipe is based to get the biscuits"),

                pro(name: "CarmelBiscuit", price: "\$1.5" , image: 'assets/images/Caramel Biscuits.jpeg',
                    disc: "caramel filling , and while there are an endless number of ways to approach baking a cinnamon roll, this recipe is based to get the biscuits"),
                pro(name: "OreoMilkshake", price: "\$11.7" , image: 'assets/images/Oreo Milkshake.jpeg',
                    disc: "combine sugar, coffee, and water. then continue whisking until it foamy milk,extra vet,ground dark roast coffee and some of water."),

                pro(name: "Oreo Donuts", price: "\$6" , image: 'assets/images/Oreo Donuts.jpeg',
                    disc: "Donut filling , and while there are an endless number of ways to approach baking a cinnamon roll, this recipe is based to get the biscuits"),


                pro(name: "Cinnapon", price: "\$4" , image: 'assets/images/Cinnamon Rolls.jpeg',
                    disc: "cinnamon filling, and while there are an number of ways to approach baking a cinnamon roll, this recipe is based to get the most satisfying outcome"),


              ]
              )),


                  SizedBox(height: 20,),
                  const Text("Popular",
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: [
                            proP(name: "Americano", price: "\$6.8" , image: 'assets/images/a Coffee.jpeg',
                                disc: " shot Americano can mostly fit in an espresso mug. Make the espresso milk, ground dark roast coffee and some of water."),
                            proP(name: "Red Tea", price: "\$1.25" , image: 'assets/images/tea.jpg',
                                disc: " tea and water. The term red tea is used for both hot and cold drinks original tea ea in India and Pakistan and referred to as chai."),

                            proP(name: "Heal Tea", price: "\$3" , image: 'assets/images/teah.webp',
                                disc: "combination of tea and heal. The term heal tea is used for both hot and cold drinks that can be combined with various kinds of Heals"),

                            proP(name: "Turkish", price: "\$9" , image: 'assets/images/tc.jpeg',
                                disc:"water. extra finely-ground coffee.Turkish coffee. sugar, optional,milk,extra vet,ground dark roast coffee and some of water" ),
                            proP(name: "Oreo Milkshake", price: "\$11.7" , image: 'assets/images/Oreo Milkshake.jpeg',
                                disc: "combine sugar, coffee, and water. then continue whisking until it foamy milk,extra vet,ground dark roast coffee and some of water."),

                          ]
                      )),


                ],)
        ),

      ),
    );
  }

  Widget pro({ required String name ,required String price ,required String image,required String disc }){
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Color(0xffd1bea8).withOpacity(.4)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all( Radius.circular(30)),

                    child: Image(image: AssetImage("${image}"),fit: BoxFit.cover,height: 170,
                     width: 226,
               ),
                  ),
                ),

          Padding(
            padding: const EdgeInsets.only(right: 3,left:9),
            child: Row(
              children: [
                Container(
                  height:63,
                  width:  115,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("$name",
                        style: TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown
                        ),
                      ),
                      Text("$price",
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 20

                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 18,left: 37),
                  child: Row(
                    children: [
                      SizedBox(width: 6,),
                      CircleAvatar(
                        radius: 17,
                        backgroundColor: Colors.brown.withOpacity(.4),
                        child: IconButton(onPressed: () {

                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Pro(name: name,price: price,disc: disc,image: image,)));
                        },
                          icon: Icon(Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                      SizedBox(width: 4,),
                      CircleAvatar(
                        radius: 17,
                        backgroundColor: Colors.brown.withOpacity(.4),
                        child: IconButton(onPressed: () {
                          FirebaseFirestore.instance.collection("fav").add({
                            'name':name,
                            'price':price,
                            'image':image,
                            'disc':disc,
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


                     /* FloatingActionButton(
                        backgroundColor: Colors.green,
                        clipBehavior: Clip.hardEdge,
                        onPressed: () {},
                        mini: true,
                        child: Icon(Icons.add,color: Colors.white,),
                      ),*/
                    ],
                  ),
                )

              ],
            ),

          )
          ],
        ),
      ),
    );
  }


  Widget proP({ required String name ,required String price ,required String image,required String disc }){
    return Padding(
      padding: const EdgeInsets.only(right: 20),
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

                child: Image(image: AssetImage("${image}"),fit: BoxFit.cover,height: 150,
                  width: 150,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 3,left: 9),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("$name",
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),
                  ),
                  Container(
                    width: 160,

                    child: Text("$disc",
                      style: TextStyle(
                          color: Colors.brown.withOpacity(.5),
                          fontSize: 13

                      ),
                    ),
                  ),
                 Row(

                   children: [
                     Container(
                       width: 90,
                       child: Text("$price",
                         style: TextStyle(fontSize: 20,
                             fontWeight: FontWeight.bold,
                             color: Colors.brown
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 27,right: 7),
                       child: CircleAvatar(
                         radius: 17,
                         backgroundColor: Colors.brown.withOpacity(.4),
                         child: IconButton(

                           onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> Pro(name: name,price: price,disc: disc,image: image,)));
                         },
                           icon: Icon(Icons.add,
                             color: Colors.white,
                             size: 20,
                           ),
                           alignment: Alignment.center,
                         ),
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


  }

}

class CustomSearchlegate extends SearchDelegate {
  List<String> searchThems = [
    "coffee",
    "tea",
    "chocolete"


  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: () {
        query = '';
      },

          icon: Icon(Icons.clear_rounded))

    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return
      IconButton(onPressed: () {
        close(context, null);
      },

          icon: Icon(Icons.arrow_back));
  }


  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuary = [];
    for (var product in searchThems) {
      if (product.toLowerCase().contains(query.toLowerCase())) {
        matchQuary.add(product);
      }
    }
    return ListView.builder(
        itemCount: matchQuary.length,
        itemBuilder: (context, index) {
          var result = matchQuary[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuary = [];
    for (var product in searchThems) {
      if (product.toLowerCase().contains(query.toLowerCase())) {
        matchQuary.add(product);
      }
    }
    return ListView.builder(
        itemCount: matchQuary.length,
        itemBuilder: (context, index) {
          var result = matchQuary[index];
          return ListTile(
            title: Text(result),
          );
        });
  }


}

