import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int a;
  int b;
  int c = 0;

  TextEditingController textbox1 = TextEditingController();
  TextEditingController textbox2 = TextEditingController();
  TextEditingController textbox3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              //your code
              TextField(
                controller: textbox1,
                decoration: InputDecoration(
                  hintText: "Enter First Number",
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(5),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              TextField(
                controller: textbox2,
                decoration: InputDecoration(
                  hintText: "Enter Second Number",
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(5),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        a = int.parse(textbox1.text);
                        b = int.parse(textbox2.text);
                        c = a + b;
                      });
                    },
                    child: Text("ADD"),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        a = int.parse(textbox1.text);
                        b = int.parse(textbox2.text);
                        c = a - b;
                      });
                    },
                    child: Text("SUB"),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        a = int.parse(textbox1.text);
                        b = int.parse(textbox2.text);
                        c = a * b;
                      });
                    },
                    child: Text("Multi"),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        a = int.parse(textbox1.text);
                        b = int.parse(textbox2.text);
                        c = a ~/ b;
                        textbox3.text = c.toString();
                      });
                    },
                    child: Text("DIV"),
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),

              TextField(
                controller: textbox3,
                decoration: InputDecoration(
                  hintText: c.toString(),
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
