import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:login_page/Register2.dart';

String uname = "";

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Register"),
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
            child: Column(children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text("  Name",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'PT_Sans_Narrow',
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                onFieldSubmitted: (text) {
                  setState(() {
                    uname = text;
                  });
                },
                decoration: InputDecoration(
                    hintText: 'Enter your name',
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
                height: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text("  Type of addiction ",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'PT_Sans_Narrow',
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter the type of addiction',
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
                height: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text("  DOB",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'PT_Sans_Narrow',
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                    hintText: 'Enter your DOB',
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
                height: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text("  Phone no",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'PT_Sans_Narrow',
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: 'Enter your Ph.no',
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
                height: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(" Username",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'PT_Sans_Narrow',
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                    hintText: 'Enter your Sign-in Username',
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
                height: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text("  Password",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'PT_Sans_Narrow',
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                    hintText: 'Enter your password',
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
                height: 10,
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: _usernameController.text,
                              password: _passwordController.text)
                          .then((value) {
                        print("Created new account");

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NxtPg()));
                      }).onError((error, stackTrace) {
                        print("Error ${error.toString()}");
                      });
                    },
                    label: const Text("Next"),
                    icon: const Icon(Icons.arrow_right),
                  )),
            ]),
          ),
        ),
      ),
    ));
  }

  _fetch() async {
    final firebaseUser = FirebaseAuth.instance.currentUser;
    if (firebaseUser != null) {
      await FirebaseFirestore.instance
          .collection('Registration')
          .where('id', isEqualTo: firebaseUser.uid)
          .get()
          .then((QuerySnapshot querySnapshot) {
        if (querySnapshot.docs.isNotEmpty) {
          var document = querySnapshot.docs[0];
          uname = document['Name'];
          print(uname);
        }
      });
    }
  }
}
