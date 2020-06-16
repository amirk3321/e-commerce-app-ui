import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterecommerceapp/model/item.dart';
import 'package:flutterecommerceapp/screen/prodect_details.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Items> _itemNameList = [
    Items(
        name: "Gulcehre ibrik",
        image: "assets/Gulcehre_ibrik.png",
        price: "€600"),
    Items(name: "HockeySugar", image: "assets/HockeySugar.png", price: "€100"),
    Items(name: "KavukVase", image: "assets/KavukVase.png", price: "€300"),
    Items(
        name: "MedicinalVase",
        image: "assets/MedicinalVase.png",
        price: "€1200"),
    Items(
        name: "MysticalVase", image: "assets/MysticalVase.png", price: "€400"),
    Items(name: "Rumili Kase", image: "assets/Rumili_Kase.png", price: "€200"),
    Items(name: "SoteriaVase", image: "assets/SoteriaVase.png", price: "€1200"),
    Items(name: "SoteriaVazo", image: "assets/SoteriaVazo.png", price: "€1100"),
    Items(
        name: "ThankGodBowl", image: "assets/ThankGodBowl.png", price: "€600"),
  ];
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: _currentIndex==0?Colors.orange:Colors.black38,),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,color: _currentIndex==1?Colors.orange:Colors.black38),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: _currentIndex==2?Colors.orange:Colors.black38),
            title: Text(""),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: <Widget>[
              _headerWidget(),
              SizedBox(
                height: 20,
              ),
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
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.keyboard_backspace,
                color: Colors.white,
              )),
          Text(
            "Store",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          Text("")
        ],
      ),
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
            "Collection",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Find the perfect",
            style: TextStyle(color: Colors.black54),
          ),
          SizedBox(
            height: 10,
          ),
          _allItemStoreDemoWidget(),
        ],
      ),
    );
  }

  Widget _allItemStoreDemoWidget() {
    return Column(
      children: <Widget>[
        _categoriesRowWidget("Categories"),
        SizedBox(
          height: 10,
        ),
        _categoriesItemListRowWidget(),
        SizedBox(
          height: 15,
        ),
        _categoriesRowWidget("Top deals"),
        SizedBox(
          height: 10,
        ),
        _topDealsListWidget(),

        SizedBox(
          height: 15,
        ),
        _categoriesRowWidget("Featured products"),
        SizedBox(
          height: 10,
        ),
        _featuredProductListWidget(),
        SizedBox(
          height: 15,
        ),
        _categoriesRowWidget("Search by brand"),
        SizedBox(
          height: 10,
        ),
        _searchByBrandListWidget(),
      ],
    );
  }

  Widget _categoriesRowWidget(String name) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "$name",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        Row(
          children: <Widget>[
            Text(
              "See all",
              style: TextStyle(color: Colors.orange, fontSize: 16),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.orange,
              size: 20,
            )
          ],
        ),
      ],
    );
  }

  Widget _categoriesItemListRowWidget() {
    return Container(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: _itemNameList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => ProductDetailsScreen(
                  image: _itemNameList[index].image,
                  name: _itemNameList[index].name,
                  price: _itemNameList[index].price,
                )));
              },
              child: _categoriesItemWidget(index));
        },
      ),
    );
  }

  Widget _categoriesItemWidget(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            width: 80,
            child: Image.asset(_itemNameList[index].image),
          ),
          SizedBox(
            height: 10,
          ),
          Text(_itemNameList[index].name),
          Text(_itemNameList[index].price)
        ],
      ),
    );
  }

  Widget _topDealsListWidget() {
    return Container(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: _itemNameList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => ProductDetailsScreen(
                  image: _itemNameList[index].image,
                  name: _itemNameList[index].name,
                  price: _itemNameList[index].price,
                )));
              },child: _topDealItemWidget(index));
        },
      ),
    );
  }

  Widget _topDealItemWidget(int index) {
    return Stack(
      children: <Widget>[
        Positioned(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(right: 15),
              height: 120,
              width: MediaQuery.of(context).size.width/1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                  gradient: LinearGradient(
                colors: [
                  Colors.brown[500],
                  Colors.black87,
                ],
                tileMode: TileMode.clamp,
              )),
              child: Container(
                margin: EdgeInsets.only(top: 10,left: 20),
                width: MediaQuery.of(context).size.width/4,
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(_itemNameList[index].name,style: TextStyle(color: Colors.white,fontSize: 18),),
                    SizedBox(height: 10,),
                    Text("W:22cm H:26cm",style: TextStyle(color: Colors.white,fontSize: 18),),
                    SizedBox(height: 10,),
                    Text(_itemNameList[index].price,style: TextStyle(color: Colors.white,fontSize: 18),),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned.fill(
            child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Image.asset(_itemNameList[index].image),
                )))
      ],
    );
  }

  _featuredProductListWidget() {
    return Container(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: _itemNameList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => ProductDetailsScreen(
                  image: _itemNameList[index].image,
                  name: _itemNameList[index].name,
                  price: _itemNameList[index].price,
                )));
              },child: _featuredProductItemWidget(index));
        },
      ),
    );
  }

  Widget _featuredProductItemWidget(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            width: 80,
            child: Image.asset(_itemNameList[index].image),
          ),
          SizedBox(
            height: 10,
          ),
          Text(_itemNameList[index].name),
          Text(_itemNameList[index].price)
        ],
      ),
    );
  }

  Widget _searchByBrandListWidget() {
    return Container(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: _itemNameList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => ProductDetailsScreen(
                  image: _itemNameList[index].image,
                  name: _itemNameList[index].name,
                  price: _itemNameList[index].price,
                )));
              },child: __searchByBrandItemWidget(index));
        },
      ),
    );
  }
  Widget __searchByBrandItemWidget(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            width: 80,
            child: Image.asset(_itemNameList[index].image),
          ),
          SizedBox(
            height: 10,
          ),
          Text(_itemNameList[index].name),
          Text(_itemNameList[index].price)
        ],
      ),
    );
  }
}
