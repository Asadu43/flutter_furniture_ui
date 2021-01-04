import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;

 @override
  void initState() {
    super.initState();

    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 250.0,
                    width: double.infinity,
                    color: Colors.amber,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15.0,),
                      Row(
                        children: [
                          SizedBox(width: 15.0,),
                          Container(
                            alignment: Alignment.topLeft,
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                color: Colors.white,

                              ),
                              image: DecorationImage(
                                image: AssetImage('images/five.jpg'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: (MediaQuery.of(context).size.width -120),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(icon:
                            Icon(Icons.menu,color: Colors.white,size: 30.0,),
                                onPressed: (){}),
                          ),
                          SizedBox(height: 15.0,),
                        ],
                      ),
                      SizedBox(height: 50.0,),
                      Padding(padding: EdgeInsets.only(
                        left: 15.0,
                      ),
                      child: Text('Hello , Asad',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Colors.black,
                      ),),
                      ),
                      SizedBox(height: 15.0,),
                      Padding(padding: EdgeInsets.only(
                        left: 15.0,
                      ),
                        child: Text('What do you want to buy?',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          color: Colors.black,
                        ),),
                      ),
                      SizedBox(height: 20.0,),
                      Padding(padding: EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(5.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search,color: Colors.amber,size: 30.0,),
                            contentPadding: EdgeInsets.only(left: 15.0,top: 10.0),
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: Colors.grey
                            ),
                          ),
                        ),
                      ),
                      ),
                      SizedBox(height: 10.0,),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              Stack(
                children: [
                  SizedBox(height: 10.0,),
                  Material(
                    elevation: 1.0,
                    child: Container(
                      height: 75.0,
                      color: Colors.white
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width/4,
                        child: Column(
                          children: [
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/couch.png"),

                                ),
                              ),
                            ),
                            Text('Sofaas',style: TextStyle(
                              fontSize: 17.0,
                            ),),
                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width/4,
                        child: Column(
                          children: [
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/bank.png"),

                                ),
                              ),
                            ),
                            Text('Wardrobe',style: TextStyle(
                              fontSize: 17.0,
                            ),),
                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width/4,
                        child: Column(
                          children: [
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/tables.png"),

                                ),
                              ),
                            ),
                            Text('Desk',style: TextStyle(
                              fontSize: 17.0,
                            ),),
                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width/4,
                        child: Column(
                          children: [
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/chairs.png"),

                                ),
                              ),
                            ),
                            Text('Dresser',style: TextStyle(
                              fontSize: 17.0,
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              itemCard("Special Sofaa", 'images/sofas.jpg', false),
              itemCard("Flexible Chairs", 'images/yellow.jpg', true),
              itemCard("Antique Interiors", 'images/interiors.jpg', false),
              itemCard("Antique Home", 'images/homes.jpg', true),

            ],
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(controller: controller,
        indicatorColor: Colors.yellow,
          tabs: [
            Tab(icon: Icon(Icons.event_seat,color: Colors.yellow,),),
            Tab(icon: Icon(Icons.timer,color: Colors.grey,),),
            Tab(icon: Icon(Icons.shopping_cart,color: Colors.grey,),),
            Tab(icon: Icon(Icons.person_outline,color: Colors.grey,),),

          ],
        ),
      ),
    );
  }

  Widget itemCard( String title, String imgPath, bool isFav ){
    return Padding(padding: EdgeInsets.only(left: 15.0, right: 15.0,top: 15.0),
    child: Container(
      height: 170.0,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          Container(
            height: 150.0,
            width: 140.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 8.0,),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    title,style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(width: 60.0,),
                  Material(
                    elevation: isFav ? 0.0:2.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: isFav? Colors.grey.withOpacity(0.2) : Colors.white,
                      ),
                      child: Center(
                        child: isFav ? Icon(Icons.favorite_border)
                        :Icon(Icons.favorite,color: Colors.red,),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.0,),
              Container(
                child: Text("The members seek to provide \n comprehensive and specialist as \n auctioneers  of antiques, ",style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0,
                ),),
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  SizedBox(width: 10.0,),
                  Container(
                    height: 40.0,
                    width: 100.0,
                    color: Colors.amber,
                    child: Center(
                      child: Text('\$248',style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                  Container(
                    height: 40.0,
                    width: 100.0,
                    color: Colors.amber,
                    child: Center(
                      child: Text('Add To Cart',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    ),
    );
  }
}

