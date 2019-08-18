import 'package:ecommerce_app/theme/theme.dart';
import 'package:flutter/material.dart';

class VerificationPage extends StatefulWidget {
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
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
                'Verification',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'a 6 Digit PIN has been sent your email address, enter it below to continue.',
                style: TextStyle(
                  fontSize: 18,
                  color: greyTitleColor,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 60),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: greyTitleColor.withOpacity(0.5),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: greyTitleColor.withOpacity(0.5),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: greyTitleColor.withOpacity(0.5),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: greyTitleColor.withOpacity(0.5),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: greyTitleColor.withOpacity(0.5),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: greyTitleColor.withOpacity(0.5),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 65),
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
                  child: Text('CONTINUE', style: TextStyle(color: Colors.white)),
                ),
              ),
              Container(
                height: 140,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
