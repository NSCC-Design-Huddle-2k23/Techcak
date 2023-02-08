import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'loginpage.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key, required this.title});
  final String title;

  @override
  State<Signuppage> createState() => _Signuppage();
}

class _Signuppage extends State<Signuppage> {
  String birthDateInString = "";
  DateTime? birthDate;
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("TechCAK"),
          backgroundColor: Color(0xFF0A0E21),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.all(7),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " Sign Up",
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      labelText: 'First Name',
                      hintText: 'Enter First Name',
                      hoverColor: Colors.blue,
                      filled: true,
                      hintStyle: TextStyle(color: Colors.pinkAccent),
                      labelStyle: TextStyle(color: Colors.white30),
                      fillColor: Color(kFgcol),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      labelText: 'Last Name',
                      hintText: 'Enter Last Name',
                      hoverColor: Colors.blue,
                      filled: true,
                      hintStyle: TextStyle(color: Colors.pinkAccent),
                      labelStyle: TextStyle(color: Colors.white30),
                      fillColor: Color(kFgcol),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      labelText: 'Email',
                      hintText: 'Enter Email',
                      hoverColor: Colors.blue,
                      filled: true,
                      hintStyle: TextStyle(color: Colors.pinkAccent),
                      labelStyle: TextStyle(color: Colors.white30),
                      fillColor: Color(kFgcol),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      labelText: 'Address',
                      hintText: 'Enter Address',
                      hoverColor: Colors.blue,
                      filled: true,
                      hintStyle: TextStyle(color: Colors.pinkAccent),
                      labelStyle: TextStyle(color: Colors.white30),
                      fillColor: Color(kFgcol),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(kFgcol),
                    ),
                    child: Center(
                      child: TextField(
                        controller: dateInput,
                        style: TextStyle(color: Colors.grey),
                        //editing controller of this TextField
                        decoration: InputDecoration(
                            icon: Icon(Icons.calendar_today,
                                color: Colors.grey), //icon of text field
                            labelText: "Enter Date",
                            labelStyle: (TextStyle(color: Colors.grey)),
                            filled: true,
                            fillColor: Color(kFgcol) //label text of field
                            ),
                        readOnly: true,
                        //set it true, so that user will not able to edit text
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1950),
                              //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2100));

                          if (pickedDate != null) {
                            print(
                                pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                            String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                            print(
                                formattedDate); //formatted date output using intl package =>  2021-03-16
                            setState(() {
                              dateInput.text =
                                  formattedDate; //set output date to TextField value.
                            });
                          } else {}
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      labelText: 'Mobile',
                      hintText: 'Enter Mobile number',
                      hoverColor: Colors.blue,
                      filled: true,
                      hintStyle: TextStyle(color: Colors.pinkAccent),
                      labelStyle: TextStyle(color: Colors.white30),
                      fillColor: Color(kFgcol),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      margin: EdgeInsets.all(10),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Loginpage(
                                      title: "",
                                    )),
                          );
                        },
                        child: Text("SIGN UP",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
