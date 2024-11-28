import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.arrow_back_outlined))),
      body: Align(
        alignment: Alignment.center,
        child: Column(children: [
          SizedBox(
              height: 200, width: 300, child: Image.asset('assets/route.png')),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue[100],
                border: Border.all(color: Colors.black)),
            height: 350,
            width: 300,
            child: Column(
              children: [
                const SizedBox(height: 20,),
                 Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          width: 250,
                          // color: Colors.white,
                          child: const Text(
                            'Map',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )),
                          const SizedBox(height: 20,),
                           SizedBox(
              height: 250, width: 280, child: Image.asset('assets/gmap.png')),
          const SizedBox(
            height: 20,
          ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
