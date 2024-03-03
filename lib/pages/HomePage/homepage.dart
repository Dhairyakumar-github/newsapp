import 'package:flutter/material.dart';
import 'package:newsapp/pages/HomePage/Widgets/bottomnavigationbar.dart';
import 'package:newsapp/pages/HomePage/Widgets/news.dart';
import 'package:newsapp/pages/HomePage/Widgets/tranding.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(153, 66, 69, 70),
      appBar: AppBar(
        title: const Text(
          "NEWS",
          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 88, 85, 85),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trandings",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Trandings(
                    authorname: "author",
                    newsTitle: "Titles",
                    subtitle: "Subtitle",
                  ),
                  Trandings(
                    authorname: "author",
                    newsTitle: "Titles",
                    subtitle: "Subtitle",
                  ),
                  Trandings(
                    authorname: "author",
                    newsTitle: "Titles",
                    subtitle: "Subtitle",
                  ),
                  Trandings(
                    authorname: "author",
                    newsTitle: "Titles",
                    subtitle: "Subtitle",
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New for you",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ],
              ),
            ),
            NewsforYou(
              title: "title",
              author: "author",
              subtitle: "subtitle",
            ),
            NewsforYou(
              title: "title",
              author: "author",
              subtitle: "subtitle",
            ),
            NewsforYou(
              title: "title",
              author: "author",
              subtitle: "subtitle",
            ),
            NewsforYou(
              title: "title",
              author: "author",
              subtitle: "subtitle",
            ),
          ],
        ),
      ),
    );
  }
}
