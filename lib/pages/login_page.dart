import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              _Header(),
              _Content()
            ],
          )
        ),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Text('Login instantly:'),
        SizedBox(height:15),
        Row(
          children:[
            Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2),spreadRadius: 1)]
              ),
              width: (size.width/2)-30,
              height: 50,
              child: Icon(FontAwesomeIcons.facebookF, color: Colors.blue[900],),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2),spreadRadius: 1)]
              ),
              width: (size.width/2)-30,
              height: 50,
              child: Icon(FontAwesomeIcons.google, color: Colors.red[900],),
            ),
          ]
        ),
        SizedBox(height:15),
        Text('Login instantly:'),
        SizedBox(height:15),
        TextField(),
        SizedBox(height:15),
        TextField(),
        SizedBox(height:15),
        Row(
          children: [
            Text('Remember Me'),
            Text('Forgot Pasword?')
          ],
        ),
        Container(
          color: Colors.blue[900],
          child: Text('Login to my account'),
        ),

        //RichText(text: InlineSpan(style: TextStyle(color: Colors.blue)))
      ],
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width:MediaQuery.of(context).size.width),
        Icon(Icons.arrow_back),
        SizedBox(height:20),
        Text('Login Now', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        SizedBox(height:10),
        Text('Please login to continue using our app.')
      ],
    );
  }
}