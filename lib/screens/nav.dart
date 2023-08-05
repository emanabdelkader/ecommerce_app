import 'package:coffee/screens/cart.dart';
import 'package:coffee/screens/fav.dart';
import 'package:coffee/screens/home.dart';
//import 'package:coffee/screens/login.dart';
import 'package:coffee/screens/profile.dart';
import 'package:flutter/material.dart';

class Nave extends StatefulWidget {
  const Nave({Key? key}) : super(key: key);

  @override
  State<Nave> createState() => _NaveState();
}

class _NaveState extends State<Nave> {
  int cindex=0;
  List<Widget>screens=[
    Home(),
     Fav(),
     Cart(),
    Profile(),



  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Color(0xffd1bea8).withOpacity(.7),
      body: screens[cindex],
      bottomNavigationBar: BottomNavigationBar
        (
        currentIndex: cindex,
        onTap: (index){
          setState(() {
            cindex=index;
          });
        },

        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),
              label: "Home",backgroundColor:Color(0xffd1bea8).withOpacity(.7),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),
              label: "Favorites"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
              label: "Cart"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),
              label: "Profile"
          )


        ],


      ),


    );
  }
}
