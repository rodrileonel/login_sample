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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _Header(),
              _Content(),
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
        SizedBox(height:40),
        Text('or login with email/mobile'),
        SizedBox(height:20),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            labelText: 'Email ID or Mobile Number'
          ),
        ),
        SizedBox(height:25),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            labelText: 'Password'
          ),
        ),
        SizedBox(height:20),
        Container(
          padding: EdgeInsets.symmetric(horizontal:20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Remember Me'),
              MaterialButton(
                onPressed: () {print('Forgot Pasword?');},
                child: Text('Forgot Pasword?', style: TextStyle(color: Colors.blue[900], fontWeight: FontWeight.bold, fontSize: 15),)
              )
            ],
          ),
        ),
        SizedBox(height:20),
        GestureDetector(
          onTap: (){
            print('Oprimiste el boton de login');
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue[900],
              borderRadius: BorderRadius.circular(10)
            ),
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Center(
              child: Text(
                'Login to my account', 
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)
              )
            ),
          ),
        ),
        SizedBox(height:20),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                style: TextStyle(color: Colors.black38, fontWeight: FontWeight.bold),
                text: "Don't have an account? ",
              ),
              TextSpan(
                style: TextStyle(color: Colors.blue[900], fontWeight: FontWeight.bold),
                text: " Register Now",
              ),
            ]
          )
        )
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