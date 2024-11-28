import 'package:flutter/material.dart';
import 'package:robo_delivr/Pages/reached_destination.dart';
import 'package:robo_delivr/Pages/statistic.dart';
import 'package:robo_delivr/widgets/myappbar.dart';

import 'bluetooth_connection.dart';
import 'connected_screen.dart';
import 'destination.dart';

class BluetoothHomeScreen extends StatefulWidget {
  const BluetoothHomeScreen({super.key});

  @override
  State<BluetoothHomeScreen> createState() => _BluetoothHomeScreenState();
}

class _BluetoothHomeScreenState extends State<BluetoothHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'RoboDelivr',
      ),
      body: Column(
        children: [
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return const ReachedDestination();
                  })));
                },
                child: Container(
                  // color: Colors.blue[100],
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    shape: BoxShape.circle,
                    boxShadow: const [
                      BoxShadow(color: Colors.black54, blurRadius: 5.0)
                    ],
                  ),
                  height: 150,
                  width: 150,
                  child: ClipRect(
                    child: Align(
                      alignment: Alignment.topCenter,
                      // heightFactor: 0.5,
                      child: Image.asset(
                        'assets/location.png',
                        height: 120,
                      ),
                    ),
                  ),
                ),
              ),

              InkWell(
                onTap: (){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return const Destination();
                  })));
                },
                child: Container(
                  // color: Colors.blue[100],
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    shape: BoxShape.circle,
                    boxShadow: const [
                      BoxShadow(color: Colors.black54, blurRadius: 5.0)
                    ],
                  ),
                  height: 150,
                  width: 150,
                  child: ClipRect(
                    child: Align(
                      alignment: Alignment.center,
                      // heightFactor: 0.5,
                      child: Image.asset(
                        'assets/courier.png',
                        height: 120,
                      ),
                    ),
                  ),
                ),
              ),
              // homeContainers(containerText: '')
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Track Parcel',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              Text('Schedule Delivery',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
              // homeContainers(containerText: ''),
              // homeContainers(containerText: '')
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: (){
                Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return const ConnectedScreen();
                  })));
              },
              child: Container(
                // color: Colors.blue[100],
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  shape: BoxShape.circle,
                  boxShadow: const [
                    BoxShadow(color: Colors.black54, blurRadius: 5.0)
                  ],
                ),
                height: 150,
                width: 150,
                child: ClipRect(
                  child: Align(
                    alignment: Alignment.center,
                    // heightFactor: 0.5,
                    child: Image.asset(
                      'assets/devicestatus.png',
                      height: 120,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap:(){
                Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return const BluetoothConnection();
                  })));
              },
              child: Container(
                // color: Colors.blue[100],
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  shape: BoxShape.circle,
                  boxShadow: const [
                    BoxShadow(color: Colors.black54, blurRadius: 5.0)
                  ],
                ),
                height: 150,
                width: 150,
                child: ClipRect(
                  child: Align(
                    alignment: Alignment.center,
                    // heightFactor: 0.5,
                    child: Image.asset(
                      'assets/apps.png',
                      height: 120,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('Device Status',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Text('Paired Devices',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
          ],
        ),
        InkWell(
          onTap: () {
            Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return const StatisticScreen();
                  })));
                
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue[100],
              shape: BoxShape.rectangle,
              border: Border.all(style: BorderStyle.solid),
              boxShadow: const [
                BoxShadow(color: Colors.black54, blurRadius: 5.0)
              ],
            ),
            // color: Colors.blue[100],
            height: 35,
            width: 320,
            child: const Padding(
              padding: EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'View Statistic',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  Row(
                    children: [
                      Icon(Icons.arrow_forward_ios_sharp),
                      Icon(Icons.arrow_forward_ios_sharp),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
