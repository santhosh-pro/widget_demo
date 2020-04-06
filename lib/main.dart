import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomeStateFullWidget(),
    );
  }
}

class MyHomeStateLessWidget extends StatelessWidget {
  String text="Waiting";

  void changeText()
   {
     text = "This is State less widget";
   }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text("Hello Widget")),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("Hello Stateless widget"),
            Text(text),
            RaisedButton(child: Text("Click me"),onPressed: changeText)
          ],
        ),
      ),
    );
  }
}


class MyHomeStateFullWidget extends StatefulWidget {
  @override
  _MyHomeStateFullWidgetState createState() => _MyHomeStateFullWidgetState();
}

class _MyHomeStateFullWidgetState extends State<MyHomeStateFullWidget> {
   String text="Waiting";

   void changeText()
   {
     setState(() {
        text = "This is State full widget";
     });
    
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello Widget")),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("Hello Statefull widget"),
            Text(text),
            RaisedButton(child: Text("Click me"),onPressed: changeText)
          ],
        ),
      ),
    );
  }
}
