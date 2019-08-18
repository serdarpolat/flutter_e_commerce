import 'package:ecommerce_app/theme/theme.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        color: Colors.white,
        alignment: AlignmentDirectional.center,
        margin: EdgeInsets.only(
          left: 32,
          right: 32,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 26,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    alignment: AlignmentDirectional.center,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 26,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 72),
              Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 46),
              Container(
                width: screenSize.width,
                child: TextField(
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(color: greyTitleColor, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: screenSize.width,
                child: TextField(
                  style: TextStyle(fontSize: 18),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: greyTitleColor, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: screenSize.width,
                child: TextField(
                  style: TextStyle(fontSize: 18),
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: greyTitleColor, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 60),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: screenSize.width,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: buttonColor,
                  ),
                  child: Text('SIGN UP', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
