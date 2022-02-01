import 'package:flutter/material.dart';
import 'package:manga_read/manga_details.dart';

class Nlist extends StatelessWidget {
  const Nlist({Key? key}) : super(key: key);

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
                "https://images.unsplash.com/photo-1547166140-e9d732e89e58?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NHw0NjcxODA4fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
            img_caption: "Beastly",
          ),
          MyListView(
            img_location:
                "https://image.shutterstock.com/image-vector/no-future-text-statue-vector-600w-1943105365.jpg",
            img_caption: "Please do..",
          ),
          MyListView(
            img_location:
                "https://images.unsplash.com/photo-1578632767115-351597cf2477?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
            img_caption: "Genshin Im..",
          ),
          MyListView(
            img_location:
                "https://images.unsplash.com/photo-1620336655055-088d06e36bf0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
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
