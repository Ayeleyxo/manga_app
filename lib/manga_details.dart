import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:smooth_star_rating/smooth_star_rating.dart';

class MangaDetails extends StatelessWidget {
  MangaDetails({
    Key? key,
  }) : super(key: key);
  final List<Map<String, String>> data = [
    {
      "title": "Naruto",
      "subtitle": "complete",
      "image": "https://images.unsplash.com/photo-1578632767115-351597cf2477?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 241, 241),
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
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
            child: Column(
              children: <Widget>[
                const ListTile(
                  title: Text(
                    "Naruto",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 25),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0.0),
                  width: double.infinity,
                  height: 500.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 5),
                        blurRadius: 8.0,
                      ),
                    ],
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1578632767115-351597cf2477?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SmoothStarRating(
                      allowHalfRating: false,
                      onRated: (v) {},
                      starCount: 5,
                      rating: 0,
                      size: 40.0,
                      isReadOnly: true,
                      color: Colors.amberAccent,
                    )

                    // IconButton(
                    //   icon: Icon(Icons.star_rate_rounded,
                    //   color: Colors.amber,),
                    //   iconSize: 30.0,
                    //   onPressed: (null),
                    // )
                  ],
                )
              ],
            ),
          ),
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
