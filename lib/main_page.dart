import 'package:flutter/material.dart';
import 'package:manga_read/doja_listview.dart';
import 'package:manga_read/popular_listview.dart';
import 'package:manga_read/yaoi_listview.dart';
import 'package:manga_read/newbies_listview.dart';


class mainPage extends StatelessWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 241, 241),
      appBar: AppBar(
        elevation: 5.0,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 100, 121, 156),
        title: RichText(
          text: const TextSpan(children: [
            TextSpan(
              text: 'Manga',
              style: TextStyle(
                color: Color.fromARGB(255, 25, 0, 124),
                fontSize: 20,
              ),
            ),
            TextSpan(
              text: 'Madness',
              style: TextStyle(
                color: Color.fromARGB(255, 41, 41, 41),
                fontSize: 20,
              ),
            ),
          ]),
        ),
        centerTitle: false,
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            color: Colors.grey,
            iconSize: 30,
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.menu),
            color: Colors.grey,
            iconSize: 30,
          ),
        ],
      ),
      body: ListView(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Popular",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Plist(),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Newbies",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Nlist(),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Top 10 Yaoi",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Ylist(),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Doja Cat's picks",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Dlist(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          backgroundColor: Color.fromARGB(255, 100, 121, 156),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: "Profile",
          backgroundColor: Color.fromARGB(255, 100, 121, 156),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.star,
          ),
          label: "Favorites",
          backgroundColor: Color.fromARGB(255, 100, 121, 156),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications,
          ),
          label: "Notifications",
          backgroundColor: Color.fromARGB(255, 100, 121, 156),
        ),
      ]),
    );
  }
}
