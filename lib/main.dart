// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'temperature.dart';

class TemperatureApp extends StatefulWidget {
  @override
  _TemperatureAppState createState() => _TemperatureAppState();
}

class _TemperatureAppState extends State<TemperatureApp> with SingleTickerProviderStateMixin {
  bool _isTitleLarge = true;
  bool _isTemperatureScreenVisible = true; // Control the visibility of the TemperatureScreen

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 105, 180),
          title: Center(
            child: AnimatedSwitcher(
              duration: Duration(seconds: 1),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: Text(
                _isTitleLarge ? 'Temperature Conversion app' : 'Converter',
                key: ValueKey<String>(_isTitleLarge ? 'Temperature Conversion app' : 'Converter'),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: _isTitleLarge ? 20 : 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                setState(() {
                  _isTitleLarge = !_isTitleLarge; // Toggle title size
                });
              },
            ),
          ],
        ),
        body: AnimatedOpacity(
          opacity: _isTemperatureScreenVisible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            padding: EdgeInsets.all(_isTemperatureScreenVisible ? 16.0 : 0.0),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isTemperatureScreenVisible = !_isTemperatureScreenVisible; // Toggle visibility
                  });
                },
                child: TemperatureScreen(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(TemperatureApp());
}
