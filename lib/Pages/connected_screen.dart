import 'package:flutter/material.dart';
import 'package:robo_delivr/Pages/algorithm.dart';
import 'package:robo_delivr/Pages/performance.dart';

import 'location.dart';
import 'map.dart';

class ConnectedScreen extends StatefulWidget {
  const ConnectedScreen({super.key});

  @override
  State<ConnectedScreen> createState() => _ConnectedScreenState();
}

class _ConnectedScreenState extends State<ConnectedScreen> {
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
        child: Column(
          children: [
            SizedBox(
                height: 170,
                width: 250,
                child: Image.asset('assets/share.png')),
                const SizedBox(height: 20),
            
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[100],
                    border: Border.all(color: Colors.black)),
                height: 350,
                width: 280,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        width: 250,
                        // color: Colors.white,
                        child: const Text(
                          'Connected To HC-05',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return const AlgorithmScreen();
                  })));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(width: 10),
                            SizedBox(
                                // width: 60,
                                child: Text(
                                  'Algorithm',
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.bold),
                                )),
                            SizedBox(width: 60),
                            Icon(Icons.arrow_circle_right_outlined)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    InkWell(
                      onTap:() {
                        Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return const PerformanceScreen();
                  })));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(width: 10),
                            SizedBox(
                                // width: 60,
                                child: Text(
                                  'Performance',
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.bold),
                                )),
                            SizedBox(width: 40),
                            Icon(Icons.arrow_circle_right_outlined)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    InkWell(
                       onTap: () {
                        Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return const LocationScreen();
                  })));},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(width: 10),
                            SizedBox(
                                // width: 60,
                                child: Text(
                                  'Location',
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.bold),
                                )),
                            SizedBox(width: 70),
                            Icon(Icons.arrow_circle_right_outlined)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                   InkWell(
                    onTap: () {
                        Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return const MapScreen();
                  })));},
                     child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(width: 10),
                            SizedBox(
                                // width: 60,
                                child: Text(
                                  'Map',
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.bold),
                                )),
                            SizedBox(width: 100),
                            Icon(Icons.arrow_circle_right_outlined)
                          ],
                        ),
                      ),
                   ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );

  }
}