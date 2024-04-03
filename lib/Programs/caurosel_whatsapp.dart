import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyApp1 extends StatefulWidget {
  const MyApp1({super.key});

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal[700],
              title: const Text('WhatsApp',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  )),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.camera_alt),
                  onPressed: () {},
                  color: Colors.white,
                ),
                //SizedBox(width: 5),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                  color: Colors.white,
                ),
                //SizedBox(width: 5),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                  color: Colors.white,
                ),
                //SizedBox(width: 5),
              ],
              bottom: TabBar(
                labelColor: Colors.white, //<-- selected text color
                unselectedLabelColor:
                    Colors.teal[200], //<--unselected text color
                indicatorColor: Colors.white,
                //indicatorSize:,
                // indicator: UnderlineTabIndicator(
                //     //borderSide: BorderSide(width: 5.0),
                //     //insets: EdgeInsets.symmetric(horizontal:50.0)
                // ),

                tabs: [
                  Tab(icon: Icon(Icons.people)),
                  Tab(
                    text: 'Chats',
                  ),
                  Tab(text: 'Updates'),
                  Tab(text: 'Calls'),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                _homeScreenState(),
                SecondScreen(),
                CarouselSliderExample(),
                //Task1(),
                //MyHomePage(),
              ],
            ),
          )),
    );
  }
}

class CarouselSliderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // DateTime now = DateTime.now();
    // String formattedDate = DateFormat('kk:mm:ss \n EEE d MMM').format(now);
    return Scaffold(
      body: ListView(children: <Widget>[
        CarouselSlider(
          items: [
            Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2017/01/08/13/58/cube-1963036__340.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2015/03/25/23/46/cube-689619__340.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJqqqTEDG47DmRff3nNLGXTq5CpMgiPWaVfw56m-Ulnb86AT005TvuIaQB58jJURMKlHk&usqp=CAU"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
          options: CarouselOptions(
            height: 300.0,
            enlargeCenterPage: true,
            //enlargeFactor: 100,
            //autoPlay: true,
            //aspectRatio: 16 / 9,
            //autoPlayCurve: Curves.bounceIn,
            enableInfiniteScroll: true,
            // autoPlayAnimationDuration: Duration(milliseconds: 800),
            //viewportFraction: 0.8,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon(
            //   Icons.star,
            //   color: Colors.red[500],
            //   size: 80,
            // ),
            CircleAvatar(
              maxRadius: 25,
              backgroundColor: Colors.black,
              child: Icon(Icons.person, color: Colors.white, size: 30),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "vinoth",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "sugha",
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.icecream, color: Colors.red),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'It is a second layout tab, which is responsible for taking pictures from your mobile.',
          style: TextStyle(fontSize: 35.0),
        ),
      ),
    );
  }
}

class _homeScreenState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.red,
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16),
              ),
              Image(
                image: AssetImage('images/courses_bg.png'),
                fit: BoxFit.cover,
              ),
              //Container(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey,
                        filled: true,
                        hintText: 'Search',
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 32.0, vertical: 14.0),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(75.0)),
                            borderSide: BorderSide.none),
                        labelStyle:
                            TextStyle(fontSize: 26 * 100, color: Colors.red)),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                      ),
                      Text(
                        "My Course",
                        style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 16),
                      // ),
                      //ClipRRect(
                      // borderRadius:
                      //     BorderRadius.vertical(top: Radius.circular(4.0)),
                      Image(
                          image: AssetImage('images/blue_box_with_shadow.png')),
                      //),
                      // SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        //margin: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text('Hello'),
                            Text('World'),
                          ],
                        ),
                      ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Padding(
                      //       padding: const EdgeInsets.only(left: 16),
                      //     ),
                      //     Expanded(
                      //       child: Text("sugha"),
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(height: 5),
                      // Row(
                      //   children: [
                      //     Padding(
                      //       padding: const EdgeInsets.only(left: 16),
                      //     ),
                      //     Expanded(
                      //       child: Text("vinoth"),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
