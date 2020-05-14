import 'package:flutter/material.dart';
import 'package:flutter_challenge/pages/details.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF21BFBD),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 15.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      onPressed: () {}),
                  Container(
                      width: 125.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.filter_list),
                              color: Colors.white,
                              onPressed: () {}),
                          IconButton(
                              icon: Icon(Icons.menu),
                              color: Colors.white,
                              onPressed: () {})
                        ],
                      ))
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Row(
                children: <Widget>[
                  Text('Healthy',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0)),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Food',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 25.0),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height - 185.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(75.0))),
              child: ListView(
                primary: false,
                padding: EdgeInsets.only(left: 25.0, right: 20.0),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 300.0,
                      child: ListView(
                        children: <Widget>[
                          _buildFoodItem('assets/images/picture1.png',
                              'Chicken Mix', '\$24.00'),
                          SizedBox(
                            height: 10.0,
                          ),
                          _buildFoodItem('assets/images/picture2.png',
                              'Turkey Mix', '\$20.00'),
                          SizedBox(
                            height: 10.0,
                          ),
                          _buildFoodItem('assets/images/picture3.png',
                              'Unknown Dish', '\$20.00'),
                          SizedBox(
                            height: 10.0,
                          ),
                          _buildFoodItem('assets/images/picture4.png',
                              'Lots Of Chicken', '\$20.00'),
                          // SizedBox(
                          //   height: 10.0,
                          // ),
                          // _buildFoodItem('assets/images/picture5.png',
                          //     'Weird Veggies', '\$20.00')
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                            height: 65.0,
                            width: 75,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Center(
                                child:
                                    Icon(Icons.search, color: Colors.black))),
                        Container(
                          height: 65.0,
                          width: 80,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey,
                                style: BorderStyle.solid,
                                width: 1.0),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Center(
                              child: Icon(Icons.shopping_basket,
                                  color: Colors.black)),
                        ),
                        Container(
                            height: 65.0,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color(0xFF1C1428),
                              border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Center(
                                child: Text(
                              'Checkout',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }

  Widget _buildFoodItem(String imgPath, String foodname, String price) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Details(
                      heroTag: imgPath,
                      foodName: foodname,
                      foodPrice: price,
                    )));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  child: Row(
                children: <Widget>[
                  Material(
                    elevation: 10.0,
                    shadowColor: Colors.black,
                    borderRadius: BorderRadius.circular(30.0),
                    child: Hero(
                      tag: imgPath,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image(
                          image: AssetImage(imgPath),
                          fit: BoxFit.cover,
                          height: 75.0,
                          width: 75.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          foodname,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          price,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15.0,
                              color: Colors.grey),
                        )
                      ])
                ],
              )),
              IconButton(
                  icon: Icon(Icons.add, color: Colors.black), onPressed: () {})
            ],
          )),
    );
  }
}
