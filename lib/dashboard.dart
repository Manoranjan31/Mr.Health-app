import 'package:flutter/material.dart';
import 'package:login_page/FunZone.dart';
import 'package:login_page/Rewards.dart';
import 'package:login_page/Settings.dart';
import 'package:login_page/Tracking.dart';
import 'Register.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String name = uname;
  @override
  Widget build(BuildContext context) {
    int currentStreak = 20;
    int maxStreak = 15;

    return MaterialApp(
        home: Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/astro.jpeg'), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text("Dashboard"),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "Hi ",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                          color: Colors.white,
                          Icons.account_circle_rounded,
                          size: 50),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    name,
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 200,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 130, 111, 164),
                          boxShadow: [BoxShadow(blurRadius: 25)]),
                      padding: const EdgeInsets.all(3),
                      child: const Text(
                        "Your Current Streak",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 130, 111, 164),
                          boxShadow: [BoxShadow(blurRadius: 25)]),
                      padding: const EdgeInsets.fromLTRB(45, 5, 1, 1),
                      child: const Text(
                        "Max Streak    ",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 200,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 130, 111, 164),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 70),
                      child: Text(
                        "$currentStreak",
                        style:
                            const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 130, 111, 164),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 80),
                      child: Text(
                        "$maxStreak    ",
                        style:
                            const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Track()));
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              boxShadow: [BoxShadow(blurRadius: 25)],
                              color: Colors.pink,
                            ),
                            height: 230,
                            width: 180,
                            child: const Stack(children: [
                              Center(
                                  child: Icon(
                                Icons.run_circle_outlined,
                                size: 70,
                                color: Colors.white,
                              )),
                              Text(
                                "   Tracking",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ]),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Rewards()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: const [BoxShadow(blurRadius: 25)],
                            color: Colors.lightBlue.shade400,
                          ),
                          height: 230,
                          width: 180,
                          child: const Stack(children: [
                            Center(
                                child: Icon(
                              Icons.star,
                              size: 70,
                              color: Colors.white,
                            )),
                            Text(
                              "   Rewards",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ]),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const FunZone()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: const [BoxShadow(blurRadius: 25)],
                              color: Colors.deepPurple.shade400,
                            ),
                            height: 230,
                            width: 180,
                            child: const Stack(children: [
                              Center(
                                  child: Icon(
                                Icons.gamepad_outlined,
                                size: 70,
                                color: Colors.white,
                              )),
                              Text(
                                "   Fun Zone",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ]),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Settings()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: const [BoxShadow(blurRadius: 25)],
                            color: Colors.pink.shade300,
                          ),
                          height: 230,
                          width: 180,
                          child: const Stack(children: [
                            Center(
                                child: Icon(
                              Icons.settings,
                              size: 70,
                              color: Colors.white,
                            )),
                            Text(
                              "    Settings",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ]),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    ));
  }
}
