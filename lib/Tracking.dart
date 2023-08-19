import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Track extends StatelessWidget {
  const Track({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/astro.jpeg'), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text('Tracking'),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 150,
                ),
                SfCalendar(
                  backgroundColor: Colors.white,
                  showDatePickerButton: true,
                  headerStyle: const CalendarHeaderStyle(
                    textAlign: TextAlign.center,
                  ),
                  firstDayOfWeek: DateTime.sunday,
                  view: CalendarView.month,
                  initialSelectedDate: DateTime.now(),
                ),
                const SizedBox(
                  height: 70,
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
                      ),
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
                      padding:
                          const EdgeInsets.symmetric(vertical: 3, horizontal: 70),
                      child: const Text(
                        "20",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 130, 111, 164),
                      ),
                      padding:
                          const EdgeInsets.symmetric(vertical: 3, horizontal: 80),
                      child: const Text(
                        "20    ",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    ));
  }
}
