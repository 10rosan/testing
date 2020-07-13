import 'package:flutter/material.dart';

class StudentProfile extends StatefulWidget {
  final String name;
  final String city;
  final String gender;
  final String mobile;
  final List course;
  StudentProfile({this.name, this.city, this.gender, this.mobile, this.course});

  @override
  _StudentProfileState createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //Todo: Your code goes here
            Text("Full Name:" + widget.name),
            Text("City:" + widget.city),
            Text("Mobile Number:" + widget.mobile),
            Text("Full Name:" + widget.gender),

            Text("Course"),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: widget.course.length,
              itemBuilder: (context, index) {
                return Text(widget.course[index]);
              },
            )
          ],
        ),
      ),
    );
  }
}
