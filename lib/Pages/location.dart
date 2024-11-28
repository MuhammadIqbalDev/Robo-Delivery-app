import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
                
              },
              child: const Icon(Icons.arrow_back_outlined))),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                  height: 200,
                  width: 280,
                  child: Image.asset('assets/gpsl.png')),
                  const SizedBox(height: 20,),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue[100],
                      border: Border.all(color: Colors.black)),
                  height: 350,
                  width: 300,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          width: 250,
                          // color: Colors.white,
                          child: const Text(
                            'Location',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(
                              width: 70,
                              child: Text(
                                'Current Location',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )),
                          // const SizedBox(width: 15,),
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white),
                              width: 160,
                              // color: Colors.white,
                              child: const Text(
                                'TB Word',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(
                              width: 72,
                              child: Text(
                                'Estimated Delivery Time',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )),
                          // const SizedBox(width: 15,),
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white),
                              width: 160,
                              // color: Colors.white,
                              child: const Text(
                                '20 min 37 seconds',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      
                      const Text(
                        'Device Status',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.green),
                        height: 25,
                        width: 150,
                        // color: Colors.green,
                        child: const Text(
                          'On Time',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 18),
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
      ),
    );
  }
}