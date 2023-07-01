import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //----------AppBar----------
      appBar: AppBar(
        title: Text('Flutter Essential Widget'),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 30,
        titleTextStyle: TextStyle(
          fontSize: 20,
        ),
        forceMaterialTransparency: false,
      ),
      //----------Body----------

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    // minimumSize: Size(100, 40),
                    // maximumSize: Size(1000, 40),
                    elevation: 10,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    shadowColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Colors.black87))),
                onPressed: () {},
                child: Text('Press')),
            TextButton(
              style: TextButton.styleFrom(),
              onPressed: () {},
              child: Text('Text Button'),
            ),
            OutlinedButton(onPressed: () {}, child: Text('Outline Button'))
          ],
        ),
      ),
    );
  }
}
