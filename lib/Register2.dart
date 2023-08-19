import 'package:flutter/material.dart';
import 'package:login_page/dashboard.dart';

class NxtPg extends StatelessWidget {
  const NxtPg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Register"),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.pinkAccent],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft)),
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text("  Well wisher Ph.no.1 : ",
                    style: TextStyle(
                        fontFamily: 'PT_Sans_Narrow',
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: 'Enter a ph.no',
                    filled: true,
                    fillColor: Colors.white54.withOpacity(0.3),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.white)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(color: Colors.white))),
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text("  Well wisher Ph.no.2 : ",
                    style: TextStyle(
                        fontFamily: 'PT_Sans_Narrow',
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: 'Enter a ph.no',
                    filled: true,
                    fillColor: Colors.white54.withOpacity(0.3),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.white)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(color: Colors.white))),
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text("  Why do you want to get rid off it : ",
                    style: TextStyle(
                        fontFamily: 'PT_Sans_Narrow',
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Type why you want to leave this addiction",
                    filled: true,
                    fillColor: Colors.white54.withOpacity(0.3),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.white)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(color: Colors.white))),
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text("  Quit Date : ",
                    style: TextStyle(
                        fontFamily: 'PT_Sans_Narrow',
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                    hintText: 'Enter the quit date',
                    filled: true,
                    fillColor: Colors.white54.withOpacity(0.3),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.white)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(color: Colors.white))),
              ),
              const SizedBox(
                height: 70,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()));
                },
                child: const Text("Submit"),
              ),
              const SizedBox(
                height: 70,
              ),
            ],
          ),
        )),
      ),
    ));
  }
}
