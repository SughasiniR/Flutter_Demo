import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/Task/eachDetails.dart';
import 'package:my_flutter_app/Task/searchbar.dart';
import 'package:my_flutter_app/main.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.items});

  final List<TaskItemNewPage> items;
  //final List<String> items1;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int tappedIndex = -1;
  String datetime = DateFormat("hh:mm a").format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        initialIndex: 1,
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
                onPressed: () {
                  //Navigator.pushNamed(context, '/cameraIcon');
                },
                color: Colors.white,
              ),
              //SizedBox(width: 5),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  Navigator.pushNamed(context, '/searchbar1');
                  //setState(() {});
                },
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
              unselectedLabelColor: Colors.teal[200], //<--unselected text color
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
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
          body: TabBarView(children: [
            ListView.builder(
              itemCount: widget.items.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  contentPadding: EdgeInsets.only(left: 5, right: 10),
                  leading: Icon(
                    Icons.account_circle_sharp,
                    size: 60,
                    color: tappedIndex == index ? Colors.red : Colors.blueGrey,
                  ),
                  title: Text(widget.items[index].title
                      //+(widget.items[index].itemNumber).toString()
                      ),
                  subtitle: Text(widget.items[index].description),
                  trailing: Text(datetime),
                  onTap: () {
                    //Update the tapped item index
                    setState(() {
                      tappedIndex = index;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailScreen(item: widget.items[index]),
                      ),
                    );
                  },
                );
              },
            ),
            //const SearchBar2(),
          ]),
        ),
      ),
    );
  }
}
