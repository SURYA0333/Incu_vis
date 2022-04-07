import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTimeSlot = 0;
  int selectedDate = 0;
  List dates = ['1', '2', '3', '4', '5'];
  List days = ['M', 'T', 'W', 'TH', 'F'];
  List timeSlot = ['9:00', '9:15', '9:30', '9:45', '10:0'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              top: 32,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: const CircleAvatar(
                    backgroundColor: Colors.amber,
                    radius: 30,
                    child: Text(
                      'G',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                  left: 20,
                ),
                child: Text(
                  'WELCOME,',
                  style: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                            offset: const Offset(0, 2),
                            blurRadius: 0,
                            color: Colors.black.withOpacity(0.2))
                      ],
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 0,
                  bottom: 20,
                  left: 20,
                ),
                child: Text(
                  'Schedule',
                  style: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                            offset: const Offset(0, 2),
                            blurRadius: 0,
                            color: Colors.black.withOpacity(0.2))
                      ],
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
              ),
            ],
          ),
          Card(
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              height: 180,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(alignment: Alignment.center, children: [
                SizedBox(
                  height: 120,
                  width: 300,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 0,
                          right: 22,
                          top: 0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                'THIS WEEK',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                            ),
                            const SizedBox(
                              width: 100,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                'NEXT WEEK',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        height: 80,
                        width: 280,
                        decoration: const BoxDecoration(
                            // color: Colors.white.withOpacity(0.4),
                            ),
                        child: ListView.builder (
                          scrollDirection: Axis.horizontal,
                          itemCount: dates.length,
                          itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedDate = index;
                              });
                            },
                            child: Container(
                              width: 50,
                              margin: EdgeInsets.only(
                                left: 8,
                                right: index == dates.length - 1 ? 20 : 0,
                              ),
                              padding: const EdgeInsets.all(12),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: index == selectedDate
                                    ? Colors.white.withOpacity(0.5)
                                    : Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(children: [
                                Text(
                                  dates[index],
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  days[index],
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ]),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Card(
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              height: 360,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber[300],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          'INCOMING EVENTS',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 260,
                      width: 300,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: timeSlot.length,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedTimeSlot = index;
                            });
                          },
                          child: Container(
                            width: double.maxFinite,
                            height: 80,
                            margin: const EdgeInsets.only(
                              left: 0,
                              right: 0,
                            ),
                            padding: const EdgeInsets.only(
                              left: 20,
                              top: 5,
                              bottom: 5,
                            ),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: index == selectedTimeSlot
                                  ? Colors.white.withOpacity(0.2)
                                  : Colors.white.withOpacity(0),
                            ),
                            child: Row(children: [
                              Text(
                                timeSlot[index],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 80,
                                width: 224,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.amber),
                              )
                            ]),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
