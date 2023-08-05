import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee/creat/userModel.dart';
import 'package:coffee/screens/developer.dart';
import 'package:coffee/screens/home.dart';
import 'package:coffee/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class SginScreen extends StatefulWidget {
  const SginScreen({Key? key}) : super(key: key);

  @override
  State<SginScreen> createState() => _SginScreenState();
}

class _SginScreenState extends State<SginScreen> {
  bool visible = true;
  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Form(
                key: formkey,
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

                    Text("SignUp",
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                            color: Colors.brown.withOpacity(.8),
                            fontSize: 38)),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
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
                    ),


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
                        backgroundColor:  Colors.brown.withOpacity(.9),
                      ),
                      onPressed: () async {
                        final String name =userController.text ;
                        if(formkey.currentState!.validate()){
                           var resalt= await FirebaseAuth.instance.createUserWithEmailAndPassword(
                             email:emailController.text ,
                             password:passController.text
                         );
                         final docUser = FirebaseFirestore.instance.collection("users").doc(resalt.user?.uid);
                         final user =UserModel(
                          name: name,
                         );
                        final json =user.toJson();
                         await docUser.set(json) ;
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                        }
                      },
                      child: const Text(
                        "Sign",
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                        ),

                      ),

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(" Have an account? "),
                        TextButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
                        }, child: const Text(
                          "LOG IN",

                          style: TextStyle(color: Colors.brown,
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                          ),)),

                      ],
                    ),
                    SizedBox(
                      height: 100,
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
        ],
        ),
      ),
    );
  }
}