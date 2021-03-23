import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CityPage.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                "CREATE YOUR FIRNESS PROFILE",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("SEARCH FOR NO.1 JOB HUNRER"),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xff395185),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('Assets/flat-color-iconsgoogle.png'),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xff395185),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('Assets/logosfacebook.png'),
                  ),
                ],
              ),
            ),
            CustomDivider(),
            CustomTextField(
              label: 'FULL NAME',
            ),
            CustomTextField(
              label: 'EMAIL ADDRESS',
            ),
            CustomTextField(
              label: 'CREATE PASSWORD',
            ),
            CustomTextField(
              label: 'MOBILE NUMBER',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: checkBoxValue,
                  onChanged: (value) {
                    setState(() {
                      checkBoxValue = value;
                    });
                  },
                  activeColor: Color(0xff405866),
                ),
                Text(
                  'SEND ME NOTIFICATIONS VIA HOWSAPP',
                  style: TextStyle(
                    color: Color(0xff405866).withAlpha(150),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            SizedBox(height: 30,),
            Column(
              children: [
                Text(
                  'By clicking register you agree to Findest.com\'s,',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Terms and conditions ',
                      style: TextStyle(
                        color: Color(0xff405866),
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'and',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' Privacy Policy',
                      style: TextStyle(
                        color: Color(0xff405866),
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 50,),

            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => CityPage()));
              },
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: Color(0xff395185),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(child: Text('Register', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  String label;
  CustomTextField({this.label});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 10,
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: label.toUpperCase(),
          hintStyle: TextStyle(
            color: Color(0xff405866).withAlpha(150),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff405866).withAlpha(150),
              width: 4,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 2,
            width: size.width * 0.4,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text('OR'),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 2,
            width: size.width * 0.4,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
