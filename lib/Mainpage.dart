import 'package:flutter/material.dart';
import 'package:techcak/Signuppage.dart';
import 'package:techcak/main.dart';
import 'constants.dart';
import 'loginpage.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key, required this.title});
  final String title;

  @override
  State<Mainpage> createState() => _Mainpage();
}

class _Mainpage extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TechCAK"),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'images/quiz.jpg',
              height: 300,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsetsDirectional.all(10),
              child: Container(
                height: 280,
                width: 400,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.all(20),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/history.png'),
                            maxRadius: 40,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.all(20),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('images/arts and culture.jpg'),
                            maxRadius: 40,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.all(20),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/music.jpg'),
                            maxRadius: 40,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.all(20),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('images/movies and books.jpg'),
                            maxRadius: 40,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.all(20),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/science.jpg'),
                            maxRadius: 40,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.all(20),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/space.jpg'),
                            maxRadius: 40,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(kFgcol),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage(
                                title: "",
                              )),
                    );
                  },
                  child: Text(
                    "1",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Loginpage(
                                title: "",
                              )),
                    );
                  },
                  child: Text(
                    "2",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Signuppage(
                                title: "",
                              )),
                    );
                  },
                  child: Text(
                    "3",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
