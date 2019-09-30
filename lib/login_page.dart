import 'package:flutter/material.dart';
import 'package:irctc_app_clone/options_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _textController = TextEditingController();
  int pin;
  bool checkValue = false;

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
                  'assets/bgimage.png',
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.95), BlendMode.dstATop)),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: height * 0.20,
                ),
                Container(
                  child: CircleAvatar(
                    radius: 40,
                    child: Image.asset(
                      'assets/irctc_main.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Container(
                  height: height * 0.1,
                  margin: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(labelText: 'Enter pin'),
                    onChanged: (value) {
                      setState(() {
                        pin = int.parse(value);
                      });
                    },
                    onSubmitted: (value) {
                      setState(() {
                        pin = int.parse(value);
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Checkbox(
                      value: checkValue,
                      onChanged: (value) {
                        setState(() {
                          checkValue = value;
                        });
                      },
                    ),
                    Text('Accept conditions'),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                RaisedButton(
                  onPressed: () {
                    if (pin.toString().length > 0)
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OptionsPage()),
                      );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  color: Colors.blue,
                  child: Container(
                    width: width * 0.8,
                    height: height * 0.08,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.arrow_forward),
                        Expanded(
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: width * 0.8,
                  padding: EdgeInsets.all(5.0),
                  alignment: Alignment.centerRight,
                  child: Text('Forgot/Change Pin'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('Or'),
                SizedBox(
                  height: 25,
                ),
                RaisedButton(
                  onPressed: null,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  color: Colors.brown,
                  child: Container(
                    width: width * 0.8,
                    height: height * 0.08,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.person_add),
                        Expanded(
                          child: Center(
                            child: Text(
                              'Change/Register User',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
