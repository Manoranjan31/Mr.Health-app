import 'package:flutter/material.dart';

class Rewards extends StatelessWidget {
  const Rewards({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/Avengers.jpg'), fit: BoxFit.cover)),
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Rewards"),
              centerTitle: true,
            ),
            body: ListView(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(8),
                    tileColor: Colors.green,
                    title: Text("Day One:"),
                    leading: Icon(Icons.auto_awesome),
                    trailing: Icon(
                      Icons.task_alt_sharp,
                      size: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(8),
                    tileColor: Colors.green,
                    title: Text("Day Two:"),
                    leading: Icon(Icons.auto_awesome),
                    trailing: Icon(
                      Icons.task_alt_sharp,
                      size: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(8),
                    tileColor: Colors.green,
                    title: Text("Day Three:"),
                    leading: Icon(Icons.auto_awesome),
                    trailing: Icon(
                      Icons.task_alt_sharp,
                      size: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(8),
                    tileColor: Colors.green,
                    title: Text("Day Four:"),
                    leading: Icon(Icons.auto_awesome),
                    trailing: Icon(
                      Icons.task_alt_sharp,
                      size: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(8),
                    tileColor: Colors.green,
                    title: Text("Day Five:"),
                    leading: Icon(Icons.auto_awesome),
                    trailing: Icon(
                      Icons.task_alt_sharp,
                      size: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(8),
                    tileColor: Colors.green,
                    title: Text("Day Six:"),
                    leading: Icon(Icons.auto_awesome),
                    trailing: Icon(
                      Icons.task_alt_sharp,
                      size: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(8),
                    tileColor: Colors.green,
                    title: Text("Day Seven:1 week completed"),
                    subtitle: Text(
                      "Mental Master",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(Icons.auto_awesome),
                    trailing: Icon(
                      Icons.task_alt_sharp,
                      color: Colors.yellow,
                      size: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(8),
                    tileColor: Colors.amber,
                    title: Text("Day Eight:"),
                    leading: Icon(Icons.auto_awesome),
                    trailing: Icon(
                      Icons.ads_click_sharp,
                      size: 40,
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
