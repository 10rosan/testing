import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    contentPadding: EdgeInsets.all(5),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Address',
                    contentPadding: EdgeInsets.all(5),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.home),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'City',
                    contentPadding: EdgeInsets.all(5),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.location_city),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Mobile',
                    contentPadding: EdgeInsets.all(5),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),
                  ),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Gender"),
                Row(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Radio(value: null, groupValue: null, onChanged: null),
                          Text("Male"),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Radio(value: null, groupValue: null, onChanged: null),
                          Text("Female"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Which Course Do you Like?"),
                Row(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Checkbox(value: false, onChanged: null),
                          Text("C programming"),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Checkbox(value: false, onChanged: null),
                          Text("Flutter"),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Checkbox(value: false, onChanged: null),
                          Text("Java"),
                        ],
                      ),
                    ),
                  ],
                ),
                Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text("Register"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
