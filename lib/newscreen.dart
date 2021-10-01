import "package:flutter/material.dart";
import "package:display_info/main.dart";

class Screen extends StatelessWidget {
  final guestname;
  final bvnname;

  const Screen({Key? key, this.guestname, this.bvnname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.grey),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Holla Freight's "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            height: 150,
            child: Column(
              children: [
                Text(
                  "welcome $guestname... ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "your bvn number is $bvnname ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
