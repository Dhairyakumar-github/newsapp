import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsDetails extends StatelessWidget {
  final String title;
  final String description;
  final String author;
  final String imgUrl;
  const NewsDetails(
      {super.key,
      required this.title,
      required this.description,
      required this.author,
      required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        imgUrl ??
                            "https://img.freepik.com/free-photo/3d-rendering-illustration-letter-blocks-forming-word-news-white-background_181624-60840.jpg?w=1060&t=st=1709550375~exp=1709550975~hmac=db3d2b779b436d8394ae236136d9a982355dba7c3b490edfaa24e9a7b3124297",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(author, style: TextStyle(fontSize: 16))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(description)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
