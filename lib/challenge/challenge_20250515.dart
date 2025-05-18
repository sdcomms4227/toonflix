import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFE64D3D),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            color: Colors.white.withOpacity(0.6),
          ), // TextStyle
          displayMedium: TextStyle(color: const Color(0xFFBF3A2B)), // TextStyle
        ), // TextTheme
        cardColor: Colors.white,
      ), // ThemeData
      home: const Scaffold(
        body: Center(child: HomeScreen()), // Center
      ), // Scaffold
    ); // MaterialApp
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static int cycleTime = 10;
  static int restTime = 5;
  int totalSeconds = cycleTime;
  bool isRunning = false;
  bool isRest = false;
  int totalRound = 0;
  int maxRound = 4;
  int totalGoal = 0;
  int maxGoal = 12;
  late Timer timer;

  void onRest() {
    setState(() {});
  }

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        if (isRest) {
          isRest = false;
          totalSeconds = cycleTime;
        } else {
          totalRound = totalRound + 1;
          if (totalRound == maxRound) {
            totalGoal = totalGoal + 1;
            if (totalGoal == maxGoal) {
              totalGoal = 0;
            }
            totalRound = 0;
          }
          isRest = true;
          totalSeconds = restTime;
        }
        isRunning = false;
      });
      timer.cancel();
    } else {
      setState(() {
        totalSeconds = totalSeconds - 1;
      });
    }
  }

  void onStartPressed() {
    timer = Timer.periodic(Duration(seconds: 1), onTick);
    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  void setReset() {
    timer.cancel();
    setState(() {
      isRunning = false;
      totalSeconds = cycleTime;
    });
  }

  void setCycleTime(int cTime) {
    setState(() {
      cycleTime = cTime;
      totalSeconds = cycleTime;
    });
    if (isRunning) {
      setReset();
    }
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split(".").first.substring(2, 7);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "POMOTIMER",
                  style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ), // TextStyle
                ), // Text
              ), // Container
            ), // Flexible
            Flexible(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(60),
                child: Container(
                  decoration: BoxDecoration(color: Theme.of(context).cardColor),
                  alignment: Alignment.center,
                  child: Text(
                    format(totalSeconds),
                    style: TextStyle(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      fontSize: 89,
                      fontWeight: FontWeight.w600,
                    ), // TextStyle
                  ), // Text
                ), // Container
              ), // Padding
            ), // Flexible
            Flexible(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                        side: BorderSide(
                          color: Theme.of(context).cardColor,
                          width: 2,
                        ),
                      ),
                    ),
                    onPressed: () => setCycleTime(15),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Text(
                        '15',
                        style: TextStyle(
                          color: Theme.of(context).cardColor,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ), // TextButton
                  TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                        side: BorderSide(
                          color: Theme.of(context).cardColor,
                          width: 2,
                        ),
                      ),
                    ),
                    onPressed: () => setCycleTime(20),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Text(
                        '20',
                        style: TextStyle(
                          color: Theme.of(context).cardColor,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ), // TextButton
                  TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                        side: BorderSide(
                          color: Theme.of(context).cardColor,
                          width: 2,
                        ),
                      ),
                    ),
                    onPressed: () => setCycleTime(25),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Text(
                        '25',
                        style: TextStyle(
                          color: Theme.of(context).cardColor,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ), // TextButton
                  TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                        side: BorderSide(
                          color: Theme.of(context).cardColor,
                          width: 2,
                        ),
                      ),
                    ),
                    onPressed: () => setCycleTime(30),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Text(
                        '30',
                        style: TextStyle(
                          color: Theme.of(context).cardColor,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ), // TextButton
                  TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                        side: BorderSide(
                          color: Theme.of(context).cardColor,
                          width: 2,
                        ),
                      ),
                    ),
                    onPressed: () => setCycleTime(35),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Text(
                        '35',
                        style: TextStyle(
                          color: Theme.of(context).cardColor,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ), // TextButton
                ],
              ), // Row
            ), // Flexible
            Flexible(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 120,
                    color: Theme.of(context).cardColor,
                    onPressed: isRunning ? onPausePressed : onStartPressed,
                    icon: Icon(
                      isRunning ? Icons.pause_circle : Icons.play_circle_fill,
                    ),
                  ), // IconButton
                  TextButton(
                    onPressed: setReset,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: const Text(
                        'Reset',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ), // TextButton
                ],
              ), // Center
            ), // Flexible
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '$totalRound/$maxRound',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                                color:
                                    Theme.of(
                                      context,
                                    ).textTheme.displayLarge!.color,
                              ), // TextStyle
                            ),
                            Text(
                              'ROUND',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).cardColor,
                              ), // TextStyle
                            ),
                          ],
                        ), // Column
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '$totalGoal/$maxGoal',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                                color:
                                    Theme.of(
                                      context,
                                    ).textTheme.displayLarge!.color,
                              ), // TextStyle
                            ),
                            Text(
                              'GOAL',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).cardColor,
                              ), // TextStyle
                            ),
                          ],
                        ), // Column
                      ],
                    ), // Row
                  ), // Expanded
                ],
              ), // Row
            ), // Flexible
          ], // children
        ), // Column
      ), // Padding
    );
  }
}
