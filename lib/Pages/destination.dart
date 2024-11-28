import 'package:flutter/material.dart';

class Destination extends StatefulWidget {
  const Destination({super.key});

  @override
  State<Destination> createState() => _DestinationState();
}

class _DestinationState extends State<Destination> {
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
            height: 250,
                  width: 300,
            child: Image.asset('assets/calendar.png'),
          ),
          Container(
            width: 300,
            height: 90,
            decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue[100],
                    // border: Border.all(color: Colors.black)
                    ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Starting Point',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
               const SizedBox(height: 10,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 30,
                    width: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,),
                    child:const Text('  Gulshan Iqbal Block 13D',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),) ,),
                )
              ]),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            width: 300,
            height: 90,
            decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue[100],
                    // border: Border.all(color: Colors.black)
                    ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Destination',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
               const SizedBox(height: 10,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 30,
                    width: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,),
                    child:const Text('  Gulistan e Johar Block 3',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),) ,),
                )
              ]),
            ),
          ),
          const SizedBox(height: 20,),
          InkWell(
            onTap: (){},
            child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.green),
                        height: 25,
                        width: 150,
                        // color: Colors.green,
                        child: const Text(
                          'Deliver It',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
          )
        ]),
      ),
    );
  }
}