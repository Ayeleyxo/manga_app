import 'package:flutter/material.dart';
import 'package:manga_read/manga_details.dart';

class Ylist extends StatelessWidget {
  const Ylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // margin: const EdgeInsets.symmetric(vertical: 60.0),
      height: 150.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          MyListView(
            img_location:
                "https://images.unsplash.com/photo-1620075267033-09d12ec75b40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDExfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
            img_caption: "Fantasies",
          ),
          MyListView(
            img_location:
                "https://images.unsplash.com/photo-1606489129187-1eee19a0a103?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDV8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
            img_caption: "Fairytale",
          ),
          MyListView(
            img_location:
                "https://images.unsplash.com/photo-1620075267033-09d12ec75b40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDExfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
            img_caption: "My Favorite",
          ),
          MyListView(
            img_location:
                "https://images.unsplash.com/photo-1582571998181-a6e23b3781d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MjB8NjE1Nzk1MTB8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
            img_caption: "Hello World",
          ),
        ],
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  final String img_location;
  final String img_caption;
  const MyListView({required this.img_location, required this.img_caption});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: InkWell(
        onTap: () {
          {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MangaDetails()));
          }
        },
        child: ListTile(
          title: Image.network(img_location),
          subtitle: Text(img_caption),
        ),
      ),
    );
  }
}
