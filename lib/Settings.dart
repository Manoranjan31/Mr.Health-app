import 'package:flutter/material.dart';
import 'package:login_page/main.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/Avengers.jpg'),
                    fit: BoxFit.cover)),
            child: Scaffold(
                appBar: AppBar(
                  title: const Text("Settings"),
                  centerTitle: true,
                ),
                body: Column(
                  children: [
                    const SizedBox(
                      height: 150,
                    ),
                    SizedBox(
                      height: 400,
                      width: double.infinity,
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(color: Colors.deepPurple),
                          child: Column(
                            children: [
                              const Center(
                                child: Icon(
                                  Icons.account_circle_rounded,
                                  size: 150,
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                "Account_Holder Name: XXX",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Phone no. 123456789",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Loginpage()));
                                  },
                                  child: const Text("Log out"))
                            ],
                          ),
                        ),
                      )),
                    ),
                  ],
                ))));
  }
}
