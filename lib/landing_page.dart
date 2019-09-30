import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:irctc_app_clone/login_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/irctc_bgimg.jpg',
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.99), BlendMode.dstATop)),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                left: width * 0.2,
                top: height * 0.075,
                child: GestureDetector(
                  child: Container(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/irctc1.jpeg'),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: width * 0.2,
                top: height * 0.075,
                child: GestureDetector(
                  child: Container(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/irctc_help.jpeg'),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: height * 0.25,
                child: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage())),
                  child: Container(
                    width: width,
                    child: Center(
                      child: Container(
                        height: height * 0.20,
                        width: height * 0.20,
                        padding: EdgeInsets.all(10.0),
                        color: Colors.blue,
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('assets/irctc_main.jpeg'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: height * 0.45,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'More Apps to use on IRCTC',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
