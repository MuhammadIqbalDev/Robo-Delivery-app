import 'package:flutter/material.dart';

class ReachedDestination extends StatefulWidget {
  const ReachedDestination({super.key});

  @override
  State<ReachedDestination> createState() => _ReachedDestinationState();
}

class _ReachedDestinationState extends State<ReachedDestination> {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
          const SizedBox(height: 12,),
            SizedBox(
              height: 200,
              width: 300,
              child: Image.asset('assets/gps.png'),
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
                      alignment: Alignment.center,
                      child: Text(
                        'Starting Point',
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 30,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          '  Pharmacy',
                          style:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ),
            const SizedBox(
              height: 10,
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
                      alignment: Alignment.center,
                      child: Text(
                        'Destination',
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 30,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'ICU',
                          style:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ),
            const SizedBox(
              height: 10,
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
                      alignment: Alignment.center,
                      child: Text(
                        'Current Location',
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 30,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          '  Urology Ward',
                          style:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ),
            const SizedBox(
              height: 10,
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
                      alignment: Alignment.center,
                      child: Text(
                        'Hurdles Avoided',
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 30,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          '12',
                          style:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ),
            const SizedBox(
              height: 10,
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
                      alignment: Alignment.center,
                      child: Text(
                        'Time Till Delivery',
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 30,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          '20 min 37 seconds',
                          style:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ),
             const SizedBox(height: 10,),
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
                            'Done',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
            ),
            const SizedBox(height: 30,),
          ]),
        ),
      ),
    );
  }
}
