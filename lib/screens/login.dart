import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee/creat/userModel.dart';
import 'package:coffee/screens/department.dart';
import 'package:coffee/screens/developer.dart';
import 'package:coffee/screens/home.dart';
import 'package:coffee/screens/nav.dart';
import 'package:coffee/screens/sign.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool visible = true;
  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
   // initialization();
  }

  void initialization() async {

    await Future.delayed(const Duration(seconds: 3));
    FlutterNativeSplash.remove();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Color(0xffd1bea8)
      backgroundColor:Colors.white,
      body: SafeArea(
        child:
            Stack(
              children:<Widget>[

                SingleChildScrollView(
              child: Form(
                key: formkey,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100),
                    )
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("HOME",
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 38)),
                          Text(" COFFEE",
                            style: TextStyle(
                                color: Colors.brown.withOpacity(.6),
                                fontSize: 27
                            ),
                          ),
                          Image(image: AssetImage('assets/images/l2.jpg',
                          ),
                            height: 50,
                            width: 50,
                          ),
                        ],
                      ),

                       Text("LOGIN",
                         // textAlign: TextAlign.center,
                          style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              color: Colors.brown.withOpacity(.8),
                              fontSize: 38)),
                      const SizedBox(
                        height: 40,
                      ),

                     /* Container(
                          margin: const EdgeInsets.only(left: 32, right: 32),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(30)

                            ),
                            color: Color(0xffd1bea8),
                          ),

                          child:  TextFormField(

                            controller: userController,
                            validator: (value){
                              if(value!.isEmpty){
                                return "username must not empty";
                              }
                              return null;
                            }
                            ,
                            style: const TextStyle(),
                            scrollPadding: EdgeInsets.all(10),
                            decoration: const InputDecoration(
                             // prefixIcon:Icon(Icons.account_circle) ,
                             // contentPadding: EdgeInsets.all(20),,
                              border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                              hintStyle: TextStyle(color: Colors.white),
                              labelText: 'Username',

                            ),
                            keyboardType: TextInputType.name,

                          )),

                      const SizedBox(
                        height: 20,
                      ),*/


                      Container(
                        margin: const EdgeInsets.only(left: 32, right: 32),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(30)

                          ),
                          color: Color(0xffd1bea8),
                        ),
                        child:  TextFormField(
                          controller:emailController,
                          validator: (value){
                            if(value!.isEmpty){
                              return "email must not empty";
                            }
                            return null;
                          }
                          ,
                          style: const TextStyle(),
                          scrollPadding: EdgeInsets.all(10),
                          decoration: const InputDecoration(
                           // prefixIcon:Icon(Icons.email) ,
                            contentPadding: EdgeInsets.all(20),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(30))),


                            hintStyle: TextStyle(color: Colors.black),
                            labelText: 'Email',
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 32, right: 32),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(30)

                          ),
                          color: Color(0xffd1bea8),
                        ),
                        child: TextFormField(
                          controller: passController,
                          validator: (value){
                            if(value!.isEmpty){
                              return "password must not empty";
                            }
                            return null;
                          }
                          ,
                          obscureText: visible ,
                          style: TextStyle(),
                          scrollPadding: EdgeInsets.all(10),
                          decoration: InputDecoration(
                           // prefixIcon:Icon(Icons.lock) ,
                            suffixIcon: IconButton(
                                onPressed:(){
                                  setState(() {
                                    visible = !visible;

                                  });
                                },
                                icon: visible
                                    ?const Icon(Icons.visibility_off,color: Colors.brown,)
                                    :  const Icon(Icons.remove_red_eye)
                            ),
                            contentPadding: EdgeInsets.all(20),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(30))),


                            hintStyle: TextStyle(color: Colors.black),
                            labelText: 'Password',
                          ),
                          keyboardType: TextInputType.visiblePassword,
                        ),
                      ),

                      const SizedBox(
                        height: 35,
                      ),
                      ElevatedButton(

                        style: TextButton.styleFrom(
                          shape: StadiumBorder(),
                          //padding: EdgeInsets.symmetric(vertical: 20,horizontal: 120),
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 110),
                          backgroundColor: Colors.brown.withOpacity(.9),
                        ),
                        onPressed: ()  async {


                          if(formkey.currentState!.validate()){
                            FirebaseAuth.instance.signInWithEmailAndPassword(email:emailController.text , password:passController.text )
                            .then((value) {
                              print(value.user?.email);
                              //Navigator.push(context, MaterialPageRoute(builder: (context)=> Nave()));
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Departmant()));
                            });

                          }

                        },

                        child: const Text(
                          "Login",
                          style:

                          TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                          ),

                        ),

                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Dont have an account? "),
                          TextButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const SginScreen()));

                          }, child: Text("SIGN UP",
                            style: TextStyle(color: Colors.brown,
                              fontSize: 17,
                                fontWeight: FontWeight.bold
                            ),))
                        ],
                      ),
                      SizedBox(
                        height: 200,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Developer()));

                          }, child: Text("Learn more",
                            style: TextStyle(color: Colors.brown,
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                            ),))
                        ],
                      )
                    ],
                  ),
                ),
              ),
          ),
    ]
            ),
      ),
    );
  }

}
