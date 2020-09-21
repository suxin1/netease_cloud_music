import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Counter",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomeScreen(title: "Flutter Counter Page"));
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _handleButtonClick() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0.0,
      ),
      body: Container(
        child: Center(
          child: Expanded(
              child: Text("You have click the button $_counter Times!")),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _handleButtonClick,
        tooltip: "increment",
        child: Icon(Icons.add),
      ),
    );
  }
}
