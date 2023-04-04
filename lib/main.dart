import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculate Electricty Bill',
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
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Bill Calculator",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // Tubelight
  double tubelIghtTotal = 0.0;
  TextEditingController tubelightWatt = TextEditingController();
  TextEditingController tubelIghtNumber = TextEditingController();

  // Fan
  double FanTotal = 0.0;
  TextEditingController FanWatt = TextEditingController();
  TextEditingController FanNumber = TextEditingController();

  // Ac

  double ACTotal = 0.0;
  TextEditingController ACWatt = TextEditingController();
  TextEditingController ACNumber = TextEditingController();

  // Refridgretor
  double RefridgeratorsTotal = 0.0;
  TextEditingController RefridgeratorsWatt = TextEditingController();
  TextEditingController RefridgeratorsNumber = TextEditingController();
  // Tv
  double TVTotal = 0.0;
  TextEditingController TVWatt = TextEditingController();
  TextEditingController TVNumber = TextEditingController();
  // TextEditingController TVTotal = TextEditingController();

  double total = 0.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "TubeLight",
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
                SizedBox(
                  height: 40.0,
                  width: 140.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'TubeLight Watt',
                    ),
                    controller: tubelightWatt,
                  ),
                ),
                Text(
                  "x",
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
                SizedBox(
                  height: 40.0,
                  width: 140.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Number',
                    ),
                    controller: tubelIghtNumber,
                  ),
                ),
                Text(
                  "=",
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
                SizedBox(
                    height: 40.0,
                    width: 140.0,
                    child: Text(
                      "$tubelIghtTotal",
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Fan",
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
                SizedBox(
                  height: 40.0,
                  width: 140.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Fan Watt',
                    ),
                    controller: FanWatt,
                  ),
                ),
                Text(
                  "x",
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
                SizedBox(
                  height: 40.0,
                  width: 140.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Number',
                    ),
                    controller: FanNumber,
                  ),
                ),
                Text(
                  "=",
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
                SizedBox(
                  height: 40.0,
                  width: 140.0,
                  child: Text(
                    "$FanTotal",
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "AC",
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
                SizedBox(
                  height: 40.0,
                  width: 140.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'AC',
                    ),
                    controller: ACWatt,
                  ),
                ),
                Text(
                  "x",
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
                SizedBox(
                  height: 40.0,
                  width: 140.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'AC',
                    ),
                    controller: ACNumber,
                  ),
                ),
                Text(
                  "=",
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
                SizedBox(
                  height: 40.0,
                  width: 140.0,
                  child: Text(
                    "$ACTotal",
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Refrigerator",
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
                SizedBox(
                  height: 40.0,
                  width: 140.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Refrigerator',
                    ),
                    controller: RefridgeratorsWatt,
                  ),
                ),
                Text(
                  "x",
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
                SizedBox(
                  height: 40.0,
                  width: 140.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Refrigerator',
                    ),
                    controller: RefridgeratorsNumber,
                  ),
                ),
                Text(
                  "=",
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
                SizedBox(
                    height: 40.0,
                    width: 140.0,
                    child: Text(
                      "$RefridgeratorsTotal",
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Tv",
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
                SizedBox(
                  height: 40.0,
                  width: 140.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'TV',
                    ),
                    controller: TVWatt,
                  ),
                ),
                Text(
                  "x",
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
                SizedBox(
                  height: 40.0,
                  width: 140.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'TV',
                    ),
                    controller: TVNumber,
                  ),
                ),
                Text(
                  "=",
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
                SizedBox(
                  height: 40.0,
                  width: 140.0,
                  child: Text(
                    "$TVTotal",
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 2.0,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  FanTotal =
                      double.parse(FanWatt.text) * int.parse(FanNumber.text);
                  TVTotal =
                      double.parse(TVWatt.text) * int.parse(TVNumber.text);
                  RefridgeratorsTotal = double.parse(RefridgeratorsWatt.text) *
                      int.parse(RefridgeratorsNumber.text);
                  tubelIghtTotal = double.parse(tubelightWatt.text) *
                      int.parse(tubelIghtNumber.text);
                  ACTotal =
                      double.parse(ACWatt.text) * int.parse(ACNumber.text);
                  total = FanTotal +
                      TVTotal +
                      RefridgeratorsTotal +
                      tubelIghtTotal +
                      ACTotal;
                });
              },
              child: Text(
                "Calculate Total",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 30.0),
            child: Text(
              "Your Total Bill is : Rs.$total",
              textAlign: TextAlign.right,
              style: TextStyle(color: Colors.black, fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }
}
