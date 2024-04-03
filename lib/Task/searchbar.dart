import 'package:flutter/material.dart';
import 'package:my_flutter_app/Task/eachDetails.dart';

class SearchBar2 extends StatefulWidget {
  const SearchBar2({super.key});
  //final List<String> itemToSearch;

  @override
  State<SearchBar2> createState() => _SearchBar2State();
}

class _SearchBar2State extends State<SearchBar2> {
  TextEditingController editingController = TextEditingController();
  //final List<String> duplicateItem = items;
  List<String> itemToSearch = [
    'Akilesh',
    'Vinoth',
    'Sughasini',
    'Lokesh',
    'Oviya',
    'Manjula',
    'Rajendiran',
    'Velmurugan',
    'Linga',
    'Vellai'
  ];

  //itemToSearch.sort();
  //List<String>.generate(15, (i) => "Item $i");
  List<String> itemsSearch = [];
  @override
  void initState() {
    //itemsSearch = itemToSearch;
    super.initState();
    itemToSearch.sort();
    setState(() {
      itemsSearch = itemToSearch;
    });
  }

  void filter(String searchText) {
    List<String> results = [];
    if (searchText.isEmpty) {
      results = itemToSearch;
    } else {
      results = itemToSearch
          .where((element) =>
              element.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    }
    setState(() {
      itemsSearch = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Search bar'),
      ),
      body: //Container(
          Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //Padding(
          //padding: const EdgeInsets.all(8.0),
          TextField(
            onChanged: (value) {
              // filterSearchResults(value);
              filter(value);
            },
            controller: editingController,
            decoration: InputDecoration(
                fillColor: Colors.grey,
                filled: true,
                hintText: 'Search',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 32.0, vertical: 14.0),
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(75.0)),
                    borderSide: BorderSide.none),
                labelStyle: TextStyle(fontSize: 26 * 100, color: Colors.red)),
          ),
          //),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: itemsSearch.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${itemsSearch[index]}'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailScreen2(item: itemsSearch[index]),
                      ),
                    );
                  },
                );
                // final name = itemsSearch[index];
                // return Text(name);
              },
            ),
          ),
        ],
      ),
      //),
    );
  }
}
