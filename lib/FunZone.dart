import 'package:flutter/material.dart';

class FunZone extends StatelessWidget {
  const FunZone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/Avengers.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Fun Zone"),
            centerTitle: true,
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: const BoxDecoration(
                            boxShadow: [BoxShadow(blurRadius: 25)],
                            color: Colors.pink,
                          ),
                          height: 230,
                          width: 180,
                          child: const Stack(children: [
                            Center(
                              child: Text(
                                "Flippy bird",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )
                          ]),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: const [BoxShadow(blurRadius: 25)],
                          color: Colors.lightBlue.shade400,
                        ),
                        height: 230,
                        width: 180,
                        child: const Stack(children: [
                          Center(
                            child: Text(
                              "Buildblocks",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
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
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: const [BoxShadow(blurRadius: 25)],
                            color: Colors.deepPurple.shade400,
                          ),
                          height: 230,
                          width: 180,
                          child: const Stack(children: [
                            Center(
                              child: Text(
                                "Chess",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )
                          ]),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: const [BoxShadow(blurRadius: 25)],
                          color: Colors.pink.shade300,
                        ),
                        height: 230,
                        width: 180,
                        child: const Stack(children: [
                          Center(
                            child: Text(
                              "Connect",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ]),
                      ),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
