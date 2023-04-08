import 'package:flutter/material.dart';
import 'package:wheel_scroll_x/ampm.dart';
import 'package:wheel_scroll_x/minutes.dart';

import 'hours.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentHour = 0, currentMin = 0;
  String currentAmPM = "am";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              onSelectedItemChanged: (value) => {
                setState(
                  () {
                    currentHour = value;
                    print(currentHour);
                  },
                ),
              },
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: const FixedExtentScrollPhysics(),
              itemExtent: 50,
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 13,
                builder: (context, index) {
                  return Hours(
                    hours: index,
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              onSelectedItemChanged: (value) => {
                setState(
                  () {
                    currentMin = value;
                    print(currentMin);
                  },
                ),
              },
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: const FixedExtentScrollPhysics(),
              itemExtent: 50,
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 60,
                builder: (context, index) {
                  return Minutes(
                    mins: index,
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              onSelectedItemChanged: (value) => {
                setState(
                  () {
                    currentAmPM = value == 0 ? "am" : "pm";
                    print(currentAmPM);
                  },
                ),
              },
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: const FixedExtentScrollPhysics(),
              itemExtent: 50,
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 2,
                builder: (context, index) {
                  if (index == 0) {
                    return const AmPm();
                  } else {
                    return const AmPm(
                      isItAm: false,
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
