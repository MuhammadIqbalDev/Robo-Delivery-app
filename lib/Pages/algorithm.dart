import 'package:flutter/material.dart';

class AlgorithmScreen extends StatefulWidget {
  const AlgorithmScreen({super.key});

  @override
  State<AlgorithmScreen> createState() => _AlgorithmScreenState();
}

class _AlgorithmScreenState extends State<AlgorithmScreen> {
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
                child: Image.asset('assets/algorithm.png')),
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
                          'Algorithm',
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
                              'Training',
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
                              'Back Propagation',
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
                            width: 70,
                            child: Text(
                              'Algorithm',
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
                              'Feed - Forward',
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
                            width: 70,
                            child: Text(
                              'Error',
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
                              '0.004%',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ))
                      ],
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                            width: 70,
                            child: Text(
                              'Accuracy',
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
                              '99.998%',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ))
                      ],
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
