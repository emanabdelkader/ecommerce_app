import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:coffee/creat/productModel.dart';
import 'package:coffee/creat/userModel.dart';
//import 'package:flutter/material.dart';

class APIProvider{


  UserModel? userModel;


  Future<UserModel?> readUser() async{
    await FirebaseFirestore.instance.collection("users").doc("04ImAqj1Zqg4kLjkapmhfgXv0xy2").
    get().
    then((value) {
      userModel = UserModel.fromJson(value.data()!);
      print(userModel?.name);

    });
    return userModel;
  }


}