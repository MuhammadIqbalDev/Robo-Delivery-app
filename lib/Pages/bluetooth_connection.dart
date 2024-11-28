import 'package:flutter/material.dart';
import 'package:robo_delivr/Pages/connected_screen.dart';

import '../widgets/myappbar.dart';

class BluetoothConnection extends StatefulWidget {
  const BluetoothConnection({super.key});

  @override
  State<BluetoothConnection> createState() => _BluetoothConnectionState();
}

final List<String> items = ['Option 1', 'Option 2', 'Option 3'];
String selectedValue = 'Option 1';

class _BluetoothConnectionState extends State<BluetoothConnection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'RoboDelivr',
      ),
      body: Column(children: [
        const Center(
            child: Text(
          'Paired Devices',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Text(
                    'Device:    ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  DropdownButton<String>(
                    value: selectedValue,
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        // Update the selected value when an option is chosen
                        selectedValue = newValue;
                      }
                    },
                    items: items.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue),
                  height: 25,
                  width: 120,
                  // color: Colors.green,
                  child: const Text(
                    'Connect',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.blue[100],
            // border: Border.all(color: Colors.black)
          ),
          height: 80,
          width: 340,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Device 1',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.black),
                              color: Colors.green[300]),
                          height: 25,
                          width: 50,
                          // color: Colors.green,
                          child: const Text(
                            'ON',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.black),
                              color: Colors.red[300]),
                          height: 25,
                          width: 50,
                          // color: Colors.green,
                          child: const Text(
                            'OFF',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                      )
                    ],
                  )
                ]),
          ),
        ),
      ]),
    );
  }
}
