import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage("Animations"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  String title;

  MyHomePage(this.title);

  @override
  _MyHomePageState createState() => _MyHomePageState(title);
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState(String title);

  var tapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Align(
              child: AnimatedContainer(
                color: Colors.grey,
                alignment: Alignment.center,
                width: tapped ? 200 : 220,
                height: tapped ? 200: 250,
                child: Text("Animate ME"),
                duration: Duration(seconds: 2),
              ),
            ),
          ),
          AnimatedContainer(
            duration: Duration(seconds: 1),
            width: tapped ? MediaQuery.of(context).size.width : 150,
            height: 40,
            child: RaisedButton(
                onPressed: () {
                  setState(() {
                    tapped = !tapped;
                  });
                },
                color: Colors.green,
                child: Text("Animate"),
              ),
          )
        ],
      ),
    );
  }
}
