import 'package:flutter/material.dart';
import 'package:internhip_app/RegisterScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Scaffold(
          body: Body(),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  'Assets/Logo (2).png',
                  width: height * 0.1,
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('Assets/nAME (3).png', width: height * 0.4),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [Text("no 1 job hunter!!".toUpperCase())],
                ),
              ),
              SizedBox(
                height: height * 0.1,
              ),
              Container(
                child: Column(
                  children: [
                    TextFormField(
                        decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegisterPage(),
                      ));
                    },
                      child: button(name: 'Register', height: height)),
                  button(name: 'Login', height: height),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget button({String name, double height}) {
  return Container(
    height: height * 0.05,
    constraints: BoxConstraints(
      minHeight: 50,
    ),
    padding: EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      color: name != 'Login' ? Color(0xff395185) : Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Color(0xff395185), width: 3),
    ),
    child: TextButton(
      child: Text(
        name,
        style: TextStyle(
            color: name == 'Login' ? Color(0xff395185) : Colors.white),
      ),
    ),
  );
}
