import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterecommerceapp/screen/home_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: <Widget>[
              _headerWidget(),
              SizedBox(height: 40,),
              _bodyWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _headerWidget() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(onTap: (){
            Navigator.pop(context);
          },child: Icon(Icons.keyboard_backspace,color: Colors.white,)),
          Text("",style: TextStyle(fontSize: 18,color: Colors.white),),
          Text("")
        ],
      ),
    );
  }

  Widget _bodyWidget() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
      ),
      child: Column(
        children: <Widget>[
          Text("Let's sign you in",style: TextStyle(fontSize: 30,color: Colors.black),),
          SizedBox(height: 20,),
          Text("Welcome back, you've been missed!",style: TextStyle(color: Colors.black),),
          SizedBox(height: 40,),
          _createForm(),
        ],
      ),
    );
  }

  Widget _createForm(){
    return Column(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(
              hintText: "email"
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          decoration: InputDecoration(
              hintText: "password"
          ),
        ),
        SizedBox(height: 20,),
        _signUpButtonWidget(),
        SizedBox(height: 15,),
        _googleButtonWidget(),
        SizedBox(height: 15,),
        _facebookButtonWidget(),
        SizedBox(height: 20,),
        Text("Don't have an account? Sign Up")
      ],
    );
  }

  Widget _signUpButtonWidget() {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
      },
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width/1.8,
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius : BorderRadius.all(Radius.circular(10)),
        ),
        child: Text("SIGN IN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
    );
  }
  Widget _googleButtonWidget() {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width/1.8,
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.red),
        borderRadius : BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: <Widget>[
          Icon(FontAwesomeIcons.google,color: Colors.red,),
          SizedBox(width: 5,),
          Text("Continue with Google",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
  Widget _facebookButtonWidget() {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width/1.8,
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.blue),
        borderRadius : BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: <Widget>[
          Icon(FontAwesomeIcons.facebookF,color: Colors.blue,),
          SizedBox(width: 5,),
          Text("Continue with facebook",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}