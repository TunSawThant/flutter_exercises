import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage1(),
    );
  }
}

class HomePage1 extends StatelessWidget {
  const HomePage1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple State"),
      ),
      body: Container(
        child: Column(
          children: [
            ///image show
            Container(
              child: Center(child: Text("Image")),
              color: Colors.indigo,
              height: 200.0,
            ),

            ///Color state change
            ChangeColorWidget(),
          ],
        ),
      ),
    );
  }
}

///set state is rebuild the build method
class ChangeColorWidget extends StatefulWidget {
  const ChangeColorWidget({
    Key key,
  }) : super(key: key);

  @override
  _ChangeColorWidgetState createState() => _ChangeColorWidgetState();
}

class _ChangeColorWidgetState extends State<ChangeColorWidget> {
  Color color;
  @override
  Widget build(BuildContext context) {
    print("What is Color =>$color");
    return Card(
      elevation: 1.5,
      child: Column(
        children: [
          ///Colors display
          Container(
            //width: 100.0,
            height: 100.0,
            color: color ?? Colors.red,
          ),

          /// btn tap change color
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                onPressed: () {
                  setState(() {
                    color = Colors.red;
                  });
                },
                child: Text("btn1 Red"),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    color = Colors.blue;
                  });
                },
                child: Text("btn1 Blue"),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    color = Colors.green;
                  });
                },
                child: Text("btn1 Green"),
              )
            ],
          )
        ],
      ),
    );
  }
}
