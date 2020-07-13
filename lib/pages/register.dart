import 'package:flutter/material.dart';
import 'package:testing/pages/student_profile.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();
  TextEditingController mobile = TextEditingController();

  List<String> city = ["Pokhara", "Kathmandu", "Dharan"];
  String selectedCity = "Pokhara";

  String groupValue = "Male";
  List course = [];

  bool c1 = false;
  bool c2 = false;
  bool c3 = false;

  bool isOffline = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Form"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //fullname
                TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    contentPadding: EdgeInsets.all(5),
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "this cannot be empty";
                    } else {
                      return null;
                    }
                  },
                ),

                SizedBox(
                  height: 10,
                ),

                //city which is dropdown
                Container(
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: DropdownButton(
                    underline: SizedBox(), //box underline will be invisible
                    isExpanded: true,
                    value: selectedCity,
                    items: city.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String value) {
                      setState(() {
                        this.selectedCity = value;
                      });
                    },
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                //mobile number
                TextFormField(
                  controller: mobile,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Mobile Number',
                    contentPadding: EdgeInsets.all(5),
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "this cannot be empty";
                    } else {
                      return null;
                    }
                  },
                ),

                SizedBox(
                  height: 10,
                ),

                //gender radio button
                Text("Gender"),
                Row(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Radio(
                            value: "Male",
                            groupValue: groupValue,
                            onChanged: (value) {
                              setState(() {
                                this.groupValue = value;
                              });
                            },
                          ),
                          Text("Male"),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Radio(
                              value: "Female",
                              groupValue: groupValue,
                              onChanged: (value) {
                                setState(() {
                                  this.groupValue = value;
                                });
                              }),
                          Text("Female"),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),

                //programming langauge check box
                Text("Which program do you like?"),
                Row(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                              value: c1,
                              onChanged: (value) {
                                setState(() {
                                  this.c1 = value;
                                  if (c1 == true)
                                    course.add("Flutter");
                                  else
                                    course.remove("Flutter");
                                });
                              }),
                          Text("Flutter"),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                              value: c2,
                              onChanged: (value) {
                                setState(() {
                                  this.c2 = value;
                                  if (c1 == true)
                                    course.add("C Programming");
                                  else
                                    course.remove("C Programming");
                                });
                              }),
                          Text("C Programming"),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                              value: c3,
                              onChanged: (value) {
                                setState(() {
                                  this.c3 = value;
                                  if (c1 == true)
                                    course.add("Python");
                                  else
                                    course.remove("Python");
                                });
                              }),
                          Text("Python"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                //offline or online switch
                Switch(
                    value: isOffline,
                    onChanged: (value) {
                      setState(() {
                        this.isOffline = value;
                      });
                    }),

                SizedBox(
                  height: 10,
                ),

                //button Register
                RaisedButton(
                    child: Text("Register"),
                    onPressed: () {
                      if (_globalKey.currentState.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StudentProfile(
                              name: name.text,
                              city: selectedCity,
                              mobile: mobile.text,
                              gender: groupValue,
                              course: course,
                            ),
                          ),
                        );
                      }
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
