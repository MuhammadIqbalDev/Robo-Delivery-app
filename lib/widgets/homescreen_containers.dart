import 'package:flutter/material.dart';

Container homeContainers({
  required String containerText
}){
  return Container(
    width: 150,
    height: 150,
    decoration: BoxDecoration(
                    color: Colors.blue[100],
                    shape: BoxShape.circle,
                    boxShadow: const [
                      BoxShadow(color: Colors.black54, blurRadius: 5.0)
                    ],
                  ),
    // color: Colors.black,
    child: Image.asset('assets/maps.png',alignment: Alignment.center,),
  );
}