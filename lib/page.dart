import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
        title: Text('OrientationBuilder Example'), 
      ), 
      body: Center( 
        child: OrientationBuilder( 
          builder: (context, orientation) { 
            // Build UI elements based on device orientation 
            return  orientation == Orientation.portrait?const PortraitWidget(): HorizontalWidget();
          }, 
        ), 
      ), 
    ); 
  }
}

class HorizontalWidget extends StatelessWidget {
  const HorizontalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  children: <Widget>[
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[100],
      child: const Text("1"),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[200],
      child: const Text('2'),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[300],
      child: const Text('3'),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[400],
      child: const Text('4'),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[500],
      child: const Text('5'),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[600],
      child: const Text('6'),
    ),
  ],
);
  }
}

class PortraitWidget extends StatelessWidget {
  const PortraitWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 1,
  children: <Widget>[
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[100],
      child: const Text("1"),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[200],
      child: const Text('2'),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[300],
      child: const Text('3'),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[400],
      child: const Text('4'),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[500],
      child: const Text('5'),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[600],
      child: const Text('6'),
    ),
  ],
);
  }
}

