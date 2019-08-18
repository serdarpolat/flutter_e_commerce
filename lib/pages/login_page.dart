import 'package:ecommerce_app/theme/theme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        color: Colors.white,
        alignment: AlignmentDirectional.bottomCenter,
        margin: EdgeInsets.only(
          left: 32,
          right: 32,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                width: screenSize.width,
                child: ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(
                    'Welcome,',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Sign in to Continue',
                      style: TextStyle(
                        fontSize: 16,
                        color: greyTitleColor,
                      ),
                    ),
                  ),
                  trailing: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: buttonColor),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
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
              SizedBox(height: 18),
              Container(
                width: screenSize.width,
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forgot Password',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: greyTitleColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
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
                  child: Text('SIGN IN', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 30),
              Text(
                '-OR-',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 30),
              _buildSocialLogin(context, 'Sign In with Facebook',
                  'assets/icons/facebook.png'),
              SizedBox(height: 20),
              _buildSocialLogin(
                  context, 'Sign In with Google', 'assets/icons/google.png'),
              SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialLogin(
      BuildContext context, String title, String imagePath) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(
            color: greyTitleColor.withOpacity(0.5),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: const EdgeInsets.only(left: 46.0, right: 46),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset(
              imagePath,
              width: 25,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
