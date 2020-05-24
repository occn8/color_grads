import 'package:flutter/material.dart';
import 'colors/grads.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Color Gradients'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: grad.length,
        itemBuilder: (BuildContext context, int index) {
          Grads grads = grad[index];
          return Container(
            height: 100,
            padding: new EdgeInsets.all(5),
            margin: new EdgeInsets.all(5),
            decoration: BoxDecoration(
              gradient: grads.color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text('${grads.name}'),
          );
        },
      ),
    );
  }
}
