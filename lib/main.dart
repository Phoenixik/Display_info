import 'package:flutter/material.dart';

import 'newscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final namecontroller = TextEditingController();
  final bvncontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              const Text(
                "enter your name!",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              TextField(controller: namecontroller),
              SizedBox(height: 35),
              const Text(
                "Enter your BVN pretty please!!!",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              TextField(controller: bvncontroller),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  var name_entered = namecontroller.text;
                  var bvn = bvncontroller.text;
                  // print("name $name_entered");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Screen(guestname: name_entered, bvnname: bvn)));
                },
                child: Text(
                  "Review",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
