import 'package:flutter/material.dart';

class OptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('DASHBOARD'),
          leading: Row(
            children: <Widget>[
              Icon(Icons.clear_all),
              CircleAvatar(
                backgroundImage: AssetImage('assets/irctc1,jpeg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
