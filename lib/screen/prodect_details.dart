import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  final String price;
  final String name;
  final String image;

  ProductDetailsScreen({this.price, this.name, this.image});

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: <Widget>[
            _headerWidget(),
            _imageWidget(),
            _bodyWidget(),

          ],
        ),
      ),
    );
  }

  Widget _headerWidget() {
    return Container(
      height: 80,
      padding: EdgeInsets.only(top: 20,left: 20,right: 20),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(onTap: (){
            Navigator.pop(context);
          },child: Icon(Icons.keyboard_backspace,color: Colors.black,)),
          Text("PRODUCT DETAILS",style: TextStyle(fontSize: 18,color: Colors.black),),
          Icon(Icons.shopping_cart,color: Colors.black,)
        ],
      ),
    );
  }

  Widget _imageWidget() {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: Image.asset(widget.image,fit: BoxFit.fitHeight,),
    );
  }
  Widget _bodyWidget() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Column(
        children: <Widget>[
          Text(
            "${widget.name}",
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          SizedBox(height: 10,),
          _reviewWidget(),
          SizedBox(height: 10,),
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
          SizedBox(height: 10,),
          Text(
            "${widget.price}",
            style: TextStyle(fontSize: 20, color: Colors.brown),
          ),
          SizedBox(height: 10,),
          _rowButton()
        ],
      ),
    );
  }

 Widget _reviewWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Icon(Icons.star,color:Colors.orange,size: 18,),
                Icon(Icons.star,color:Colors.orange,size: 18,),
                Icon(Icons.star,color:Colors.orange,size: 18,),
                Icon(Icons.star,size: 18,),
                Icon(Icons.star,size: 18,),
              ],
            ),
          ),
         SizedBox(width:10),
         Text("1,248 Review")
      ],
    );
 }

  Widget _rowButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(Icons.bookmark),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Text("ADD TO CART",style: TextStyle(color: Colors.white,fontSize: 18),),
        ),
        Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
