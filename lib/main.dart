import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.pink, Colors.deepOrange],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'MeetAttendie',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 500,
                width: 325,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Welcome',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Please Login to Your Account',
                      style: TextStyle(fontSize: 15, color: Colors.black87),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          suffixIcon: Icon(
                            FontAwesomeIcons.envelope,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: Icon(
                            FontAwesomeIcons.eyeSlash,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 40, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forget Password',
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.purple,
                                  Colors.pink,
                                  Colors.deepOrange
                                ])),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Or Login Using Gmail',
                      style: TextStyle(color: Colors.black87),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.googlePlus,
                          size: 40,
                          color: Colors.redAccent,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
