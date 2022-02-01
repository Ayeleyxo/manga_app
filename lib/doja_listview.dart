import 'package:flutter/material.dart';
import 'package:manga_read/manga_details.dart';

class Dlist extends StatelessWidget {
  const Dlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // margin: const EdgeInsets.symmetric(vertical: 60.0),
      height: 150.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyListView(
            img_location:
                "https://image.shutterstock.com/image-vector/lost-reality-text-angel-statue-600w-2090495347.jpg",
            img_caption: "Beastly",
          ),
          MyListView(
            img_location:
                "https://image.shutterstock.com/image-vector/japanese-text-manga-face-translation-600w-1913900188.jpg",
            img_caption: "Please do..",
          ),
          MyListView(
            img_location:
                "https://images.unsplash.com/photo-1582571998181-a6e23b3781d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80",
            img_caption: "Genshin Im..",
          ),
          MyListView(
            img_location:
                "https://image.shutterstock.com/image-vector/skull-flame-illustration-vector-design-600w-1926299414.jpg",
            img_caption: "Dr.Stone",
          ),
        ],
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  final String img_location;
  final String img_caption;
  MyListView({required this.img_location, required this.img_caption});

  @override
  Widget build(BuildContext context) {
    return Container(
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
