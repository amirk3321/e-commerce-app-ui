import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterecommerceapp/screen/create_account_screen.dart';
import 'package:flutterecommerceapp/screen/sign_in_screen.dart';

class IntroScreen extends StatefulWidget {


  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  TextStyle _style =TextStyle(fontSize: 20,color: Colors.white);
  int _pageController=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                circle(color: _pageController==0?Colors.orange:Colors.grey),
                circle(color:  _pageController==1?Colors.orange:Colors.grey),
                circle(color:  _pageController==2?Colors.orange:Colors.grey),
              ],
            ),
            _pageSwitcher(),
          ],
        ),
      ),
    );
  }
  Widget _pageSwitcher(){
    if (_pageController==0){
     return _pageOneWidget();
    }
    if (_pageController==1){
      return _pageTwoWidget();
    }
    if (_pageController==2){
      return _pageThreeWidget();
    }
    return Container();
  }
  Widget _pageOneWidget() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset("assets/Gulcehre_ibrik.png"),
        Text("€560",style: TextStyle(color: Colors.white,fontSize: 18),),
        SizedBox(height: 10,),
        Text("HISTORY CULTURE GLASS",style: TextStyle(color: Colors.white),),
        SizedBox(height: 30,),
        Text("Gulcehre ibrik",style:_style,),
        Text("Limited  Edition",style: _style,),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){
            setState(() {
              _pageController=1;
            });
          },
          child: Container(
            width: MediaQuery.of(context).size.width/2,
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Text("Next",style: TextStyle(fontSize: 20,color: Colors.white),),
          ),
        )
      ],
    );
  }
  Widget _pageTwoWidget() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("HISTORY CULTURE GLASS"),
        SizedBox(height: 10,),
        Text("Gulcehre ibrik",style:_style,),
        Text("Limited  Edition",style: _style,),
        SizedBox(height: 10,),
        Text("€860",style: TextStyle(color: Colors.white,fontSize: 18),),
        SizedBox(height: 10,),
        Image.asset("assets/Rumili_Kase.png"),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){
            setState(() {
              _pageController=2;
            });
          },
          child: Container(
            width: MediaQuery.of(context).size.width/2,
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Text("Next",style: TextStyle(fontSize: 20,color: Colors.white),),
          ),
        )
      ],
    );
  }
  Widget _pageThreeWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset("assets/MysticalVase.png"),
        Text("€560",style: TextStyle(color: Colors.white,fontSize: 18),),
        SizedBox(height: 10,),
        Text("HISTORY CULTURE GLASS"),
        SizedBox(height: 30,),
        Text("Gulcehre ibrik",style:_style,),
        Text("Limited  Edition",style: _style,),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=> SignInScreen()
            ));
          },
          child: Container(
            width: MediaQuery.of(context).size.width/2,
            padding: EdgeInsets.symmetric(vertical: 5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.orange,width: 1),
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Text("SIGN IN",style: TextStyle(fontSize: 20,color: Colors.white),),
          ),
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=> CreateAccountScreen()
            ));
          },
          child: Container(
            width: MediaQuery.of(context).size.width/2,
            padding: EdgeInsets.symmetric(vertical: 5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Text("CREATE ACCOUNT",style: TextStyle(fontSize: 20,color: Colors.white),),
          ),
        )
      ],
    );
  }
  Widget circle({Color color}){
    return Container(
      margin: EdgeInsets.only(left: 10),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: color
      ),
    );
  }
}
