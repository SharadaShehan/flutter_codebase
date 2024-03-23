import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonText = 'Click';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Hello World'),
          ),
          body: Center(
              child: currentIndex == 0
                  ? Container(
                      width: double.infinity,
                      color: Colors.blueGrey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  buttonText = 'Clicked';
                                });
                              },
                              child: Text(buttonText)),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  buttonText = 'Clicked';
                                });
                              },
                              child: Text(buttonText)),
                        ],
                      ),
                    )
                  : Container(
                      width: double.infinity,
                      color: Colors.green,
                      child: Image.asset('images/test1.jpg'))),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'School',
              ),
            ],
            currentIndex: currentIndex,
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
          )),
    );
  }
}
