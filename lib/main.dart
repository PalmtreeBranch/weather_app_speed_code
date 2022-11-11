import 'package:flutter/material.dart';
import 'package:weather/weather.dart';
import 'package:weather_app_speed_code/services/weatherFetcher.dart';
import 'package:weather_app_speed_code/weatherPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

PageController pagecontroller = PageController();
var screens = [
  WeatherPage(
    city: "Tokyo",
    color: Colors.greenAccent,
  ),
  WeatherPage(
    city: "Cape Town",
    color: Colors.pinkAccent,
  ),
  WeatherPage(
    city: "Stockholm",
    color: Colors.blueAccent,
  ),
  WeatherPage(
    city: "Sydney",
    color: Colors.limeAccent,
  ),
  WeatherPage(
    city: "London",
    color: Colors.redAccent,
  ),
  WeatherPage(
    city: "New York",
    color: Colors.purpleAccent,
  ),
  WeatherPage(
    city: "Lagos",
    color: Colors.white,
  ),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pagecontroller,
        children: screens,
      ),
    );
  }
}
