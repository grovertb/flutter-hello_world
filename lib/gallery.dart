import 'package:flutter/material.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      home: new MyHomePage(),
    );
  }
}

List<Container> _buildGridTileList(int count) {
  debugPrint('your output ' + count.toString());
  print('your output');
  return List<Container>.generate(count, (int index) => Container(child: new Image.asset('images/pic${index+1}.png')));
}

Widget buildGrid() {
  return GridView.extent(
      maxCrossAxisExtent: 250.0,
      padding: const EdgeInsets.all(4.0),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      children: _buildGridTileList(5));
}

class MyHomePage extends StatefulWidget {
  @override
  createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Center(
        child: buildGrid(),
      ),
    );
  }
}