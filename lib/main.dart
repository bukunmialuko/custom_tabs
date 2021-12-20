import 'package:flutter/material.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(widget.title),
          bottom: TabBar(
            padding: EdgeInsets.zero,
            tabs: [
              _buildCustomTab(),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 20,
                width: 100,
                color: Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }

  Tab _buildCustomTab() {
    const count = 1;
    return Tab(
      child: Container(
        color: Colors.greenAccent,
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Text('Decent Text'),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                height: 20,
                // padding: count <= 99
                //     ? EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4)
                //     : EdgeInsets.zero,
                decoration: count <= 99
                    ? BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      )
                    : BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        shape: BoxShape.rectangle,
                        color: Colors.red,
                      ),
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                      child: Center(
                        child: Text(
                          '$count',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
