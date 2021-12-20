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
                padding: EdgeInsets.only(left: 4, right: 4, top: 4, bottom: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                  color: Colors.red,
                ),
                child: Stack(
                  fit: StackFit.loose,
                  children: const [
                    Center(
                      child: Text(
                        '8698',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                        maxLines: 1,
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
