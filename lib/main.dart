import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_page/Register.dart';
import 'package:login_page/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreenPage(),
  ));
}

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: _initializeFirebase(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return const Loginpage();
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => LoginpageState();

  void onSubmit(String text) {}
}

class LoginpageState extends State<Loginpage> {
  final _usernameController = TextEditingController();
  final _PasswordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _PasswordController.dispose();
    super.dispose();
  }

  bool _submitted = false;

  void _login() {
    setState(() => _submitted = true);
    if (_usernameerrortext == null) {
      widget.onSubmit(_usernameController.value.text);
    }
  }

  String? get _usernameerrortext {
    final text = _usernameController.value.text;

    if (text.isEmpty) return 'Can\'t be empty';
    if (text.length < 4) return 'Too Short';
    return null;
  }

  //Login Function
  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        print("NO User found for that email");
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/backgrd.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text("Login page"),
            centerTitle: true,
            backgroundColor: Colors.black,
            elevation: 4,
          ),
          body: Center(
            child: Container(
              height: 450,
              width: 150 * 2.5,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: Column(
                children: [
                  const Text(
                    "WELCOME",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "  UserName",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ValueListenableBuilder(
                      valueListenable: _usernameController,
                      builder: (context, TextEditingValue value, __) {
                        return TextField(
                          keyboardType: TextInputType.emailAddress,
                          controller: _usernameController,
                          onChanged: (_) => setState(() {}),
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.mail,
                                color: Colors.black,
                              ),
                              errorText: _submitted ? _usernameerrortext : null,
                              filled: true,
                              fillColor: Colors.white,
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue))),
                        );
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "  Password",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _PasswordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.security,
                          color: Colors.black,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue))),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.indigoAccent)),
                          child: const Text("Register"),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Register()));
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            width: 90,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.indigoAccent)),
                                child: const Text("Login"),
                                onPressed: () async {
                                  User? user = await loginUsingEmailPassword(
                                      email: _usernameController.text,
                                      password: _PasswordController.text,
                                      context: context);

                                  print(user);
                                  _usernameController.value.text.isNotEmpty
                                      ? _login
                                      : null;

                                  if (user != null) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Dashboard()));
                                  }
                                }),
                          ))
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
