import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/pages/HomePage/Widgets/news.dart';
import 'package:newsapp/pages/NewsDetails/NewsDetails.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      fillColor: Colors.blue,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      suffixIcon: Icon(Icons.search)),
                ),
              ),
              NewsforYou(
                // ontap: () {
                //   Get.to(NewsDetails());
                // },
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
              NewsforYou(
                title: "title",
                author: "author",
                subtitle: "subtitle",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
