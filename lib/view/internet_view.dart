import 'package:flutter/material.dart';
import 'package:mvc_architecture/controller/internet_controller.dart';

class InternetScreen extends StatefulWidget {
  final InternetController controller;

  InternetScreen({required this.controller});

  @override
  _InternetScreenState createState() => _InternetScreenState();
}

class _InternetScreenState extends State<InternetScreen> {
  bool _isConnected = false;

  @override
  void initState() {
    super.initState();
    widget.controller.internetStream.listen((isConnected) {
      setState(() {
        _isConnected = isConnected;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internet Check(MVC)'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Internet Connectivity Status:', style: TextStyle(fontSize: 18),),
            SizedBox(height: 10),
            Text(
              _isConnected
                  ? 'You are Connected to Internet.'
                  : 'No Internet Connection!',
              style: _isConnected
                  ? TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.green)
                  : TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
