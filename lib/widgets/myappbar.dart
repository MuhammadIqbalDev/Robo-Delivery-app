import 'package:flutter/material.dart';

AppBar MyAppBar ({
  required String title,
}){
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 60,
          width: 70,
          child: Image.asset('assets/logo.png')),
        Text(title,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w500,),),
      ],
    ),
    centerTitle: true,
    backgroundColor: Colors.blue[100],
    toolbarHeight: 80,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
      ))  
  );
}