import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'home_note.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        'home_note': (context) => HomePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("home_note");

        },
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Digital Clock'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DigitalClock(areaDecoration: BoxDecoration(color: Colors.transparent)),

                DigitalClock(
                  digitAnimationStyle: Curves.elasticOut,
                  is24HourTimeFormat: false,
                  areaDecoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  hourMinuteDigitTextStyle: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 50,
                  ),
                  amPmDigitTextStyle: TextStyle(
                      color: Colors.blueGrey, fontWeight: FontWeight.bold),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
