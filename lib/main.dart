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
        elevation: 05,
        titleTextStyle: TextStyle(
          fontSize: 20,
        ),
        forceMaterialTransparency: false,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.home),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.connected_tv_sharp))
        ],
      ),

      //----FloatingActionButton----
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Add'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      //----------Body----------
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //----ElevatedButton----
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      // minimumSize: Size(100, 40),
                      // maximumSize: Size(1000, 40),
                      elevation: 10,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      shadowColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        // side: BorderSide(color: Colors.white)
                      )),
                  onPressed: () {},
                  child: Text('Press')),

              //----TextButton----
              TextButton(
                style: TextButton.styleFrom(),
                onPressed: () {},
                child: Text('Text Button'),
              ),

              //----OutlineButton----
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.red),
                  ),
                  onPressed: () {},
                  child: Text('Outline Button')),

              //Adding Icon on Outline Button
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.green)),
                onPressed: () {},
                icon: Icon(Icons.home),
                label: Text('Home'),
              ),

              //----IconButton----
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.contact_mail),
              ),

              //Custom Clickable or Text
              InkWell(
                  splashColor: Colors.red,
                  onLongPress: () {
                    print('Long Pressed');
                  },
                  onDoubleTap: () {
                    print('Double Tap');
                  },
                  onTap: () {
                    print('Taped');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('InkWell'),
                  )),

              //----First Text Field----
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Enter Your Name',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2)),
                  ),
                ),
              ),

              //----Second Text Field----
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2)),
                  ),
                ),
              ),
              //----Third Text Field
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Enter Your Phone',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
