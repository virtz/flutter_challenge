import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final String heroTag;
  final String foodName;
  final String foodPrice;

  const Details({Key key, this.heroTag, this.foodName, this.foodPrice})
      : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  var selectedCard = 'WIEGHT';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF7A9BEE),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text('Details',
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 18.0,
                  color: Colors.white)),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
              color: Colors.white,
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height - 82.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                ),
                Positioned(
                    top: 75.0,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45.0),
                            topRight: Radius.circular(45.0),
                          ),
                          color: Colors.white,
                        ),
                        height: MediaQuery.of(context).size.height - 100.0,
                        width: MediaQuery.of(context).size.width)),
                Positioned(
                    top: 30,
                    left: (MediaQuery.of(context).size.width / 2) - 100.0,
                    child: Hero(
                        tag: widget.heroTag,
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(55.0),
                              image: DecorationImage(
                                  image: AssetImage(widget.heroTag),
                                  fit: BoxFit.cover),
                            ),
                            height: 200.0,
                            width: 200.0))),
                Positioned(
                    top: 250.0,
                    left: 25.0,
                    right: 25.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(widget.foodName,
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 22.0,
                                fontWeight: FontWeight.w700)),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(widget.foodPrice,
                                style: TextStyle(
                                    fontFamily: "Montseerat",
                                    fontSize: 20.0,
                                    color: Colors.grey)),
                                    Container(height: 25.0,color:Colors.grey, width:1.0,),
                                    Container(
                                      width:125.0,
                                      height:40.0,
                                      decoration: BoxDecoration(
                                        borderRadius:BorderRadius.circular(17.0),
                                        color:Color(0xFF7A9BEE),

                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                        InkWell(
                                          onTap:(){

                                          },
                                          child:Container(height: 20.0,
                                          width:25.0,
                                          decoration:BoxDecoration(
                                            borderRadius: BorderRadius.circular(7.0),
                                            color:Color(0xFF7A9BEE)
                                          ),
                                          child:Center(
                                            child: Icon(Icons.remove,
                                            color:Colors.white,size:20.0),
                                          ))
                                        ),
                                        Text('2',style:TextStyle(
                                          color:Colors.white,
                                          fontSize:18.0,fontFamily: 'Montserrat')),
                                          InkWell(
                                          onTap:(){

                                          },
                                          child:Container(height: 20.0,
                                          width:25.0,
                                          decoration:BoxDecoration(
                                            borderRadius: BorderRadius.circular(7.0),
                                            color:Colors.white
                                          ),
                                          child:Center(
                                            child: Icon(Icons.add,
                                            color:Colors.black,size:15.0),
                                          ))
                                        ),
                                        ],
                                      ),
                                    )
                          ],
                        ),
                        SizedBox(height:60.0),
                        Container(
                          height:150.0,child:ListView(
                            scrollDirection:Axis.horizontal,
                            children:<Widget>[
                            _buildInfoCard("WEIGHT", '300', 'CAL'),
                            SizedBox(width: 10.0,),
                            _buildInfoCard("GAUMPY", '256.3', 'CAL'),
                             SizedBox(width: 10.0,),
                             
                            _buildInfoCard("AVAIL", '100', 'CAL'),
                            SizedBox(width: 10.0,),
                            _buildInfoCard("DEMAND", '150', 'CAL')
                            ]
                          )
                        ),
                        SizedBox(height:40.0),
                        MaterialButton(
                          height: 70,
                          onPressed: (){},
                         color: Color(0xFF1C1428),
                           shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft:Radius.circular(30),
                                  bottomRight:Radius.circular(30),
                                  topLeft: Radius.circular(10.0),
                                  topRight:Radius.circular(10.0))
                                  
                        ),
                        child:Center(child: Text('\$53.00',style:TextStyle(color:Colors.white,fontSize:15.0)))
                        )
                      ],
                    ))
              ],
            )
          ],
        ));
  }
  Widget _buildInfoCard(String cardTitle,String info, String unit){
    return InkWell(
      onTap:(){
        selectCard(cardTitle);
      },
      child:AnimatedContainer(
        duration:Duration(milliseconds: 500),
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(20.0),
          color:cardTitle == selectedCard ? Color(0xFF7A9BEE):Colors.white,
        border:Border.all(
          color:cardTitle == selectedCard? Colors.transparent: Colors.grey.withOpacity(0.3),
        style:BorderStyle.solid,width: 0.75
        ),
        
       
        ),
        height:150.0,
        width: 100.0,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(top:8.0,left:15.0),
            child:Text(cardTitle,style:TextStyle(fontFamily: 'Montserrat',fontSize:12.0,color:cardTitle ==selectedCard ? Colors.white :Colors.grey.withOpacity(0.3),
            )
            )),
            Padding(
              padding: const EdgeInsets.only(left:15.0,bottom:10.0),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: <Widget>[
                Text(info,style:TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize:12.0,
                  color:cardTitle == selectedCard ? Colors.white:Colors.black,
                  fontWeight: FontWeight.bold,
                )),
                Text(unit,style:TextStyle(
                  fontFamily:'Montseerat',
                  fontSize:12.0,color:cardTitle == selectedCard ?Colors.white:Colors.black
                ))
              ],),
            )
          ]),
      )
    );
  }
  selectCard(cardTitle){
    setState(() {
      selectedCard = cardTitle;
    });
  }
}
