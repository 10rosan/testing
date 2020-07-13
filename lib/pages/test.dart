import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('Station'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //W1
              Image(
                image: NetworkImage(
                  "https://scontent.fpkr1-1.fna.fbcdn.net/v/t1.0-0/p640x640/50956291_2214284205556431_5307374435802546176_o.jpg?_nc_cat=108&_nc_sid=dd9801&_nc_ohc=lIC7YUJXMo4AX_JavVB&_nc_ht=scontent.fpkr1-1.fna&_nc_tp=6&oh=90fb9694e38a43c9d188d061e5c0b210&oe=5F30320B",
                ),
              ),

              //w2
              ListTile(
                title: Text("Salty Items"),
                trailing: Text("View All"),
              ),

              //w3
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                color: Colors.red,
              ),

              //w4
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Text("About US"),
                  ),
                  Expanded(
                      flex: 3,
                      child: Text(
                          "This is the testing of different widgets.SO lets try new things.")),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              //w5

              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Text("Porfolio"),
                  ),
                  Expanded(
                      flex: 3,
                      child: Text(
                          "This is the testing of different widgets.SO lets try new things.")),
                ],
              )
            ],
          ),
        ));
  }
}

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(),
//       appBar: AppBar(
//         title: Text('Station The Food'),
//       ),
//       body: Material(
//         // color: Colors.purple,
//         child: Center(
//           child: Text(
//             "Hello World",
//             textDirection: TextDirection.ltr,
//             style: TextStyle(
//               fontSize: 30,
//               color: Colors.black,
//               //backgroundColor: Colors.red,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
