import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_text_input_example/page_route_transitions.dart';
import 'demo_screen.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(MyApp());

  //used in screen animation demo
  WidgetsFlutterBinding.ensureInitialized();
  PlatformDispatcher.instance.requestDartPerformanceMode(DartPerformanceMode.balanced);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Janky Screen Animation'),
      ),
      body:  Column(
      mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Center(

            child: ElevatedButton(
                onPressed: () {
                  PlatformDispatcher.instance.requestDartPerformanceMode(DartPerformanceMode.latency);
                  Navigator.of(context).push(
                  CupertinoPageRoute(builder: (_) => const DemoScreen()));
                },
                  /* Test custom transition
                  Navigator.push(context,
                    SlideLeftRoute(
                      page: DemoScreen(),
                      duration: Duration(milliseconds: 300),
                    ),
                  );
                  */
                child: const Text('Demo screen')),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
