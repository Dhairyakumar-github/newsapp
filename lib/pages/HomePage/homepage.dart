import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/controllor/newsControllor.dart';
// import 'package:newsapp/pages/HomePage/Widgets/bottomnavigationbar.dart';
import 'package:newsapp/pages/HomePage/Widgets/news.dart';
import 'package:newsapp/pages/HomePage/Widgets/tranding.dart';
import 'package:newsapp/pages/NewsDetails/NewsDetails.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsControllor = Get.put(NewsController());
    return Scaffold(
      // backgroundColor: Color.fromARGB(153, 66, 69, 70),
      appBar: AppBar(
        title: const Text(
          "NEWS",
          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 88, 85, 85),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      // newsControllor.getTrendingNews();
                    },
                    child: const Text(
                      "Trandings",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  ),
                  const Text(
                    "See all",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Obx(
                  () => Row(
                    children: newsControllor.trendingNews
                        .map(
                          (e) => InkWell(
                            onTap: () {
                              Get.to(
                                NewsDetails(
                                  title: e.title.toString(),
                                  imgUrl: e.urlToImage.toString(),
                                  description: e.content.toString(),
                                  author: e.author.toString(),
                                ),
                              );
                            },
                            child: Trandings(
                              authorname: e.author.toString(),
                              newsTitle: e.title.toString(),
                              url: e.urlToImage.toString(),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                )),
            const Padding(
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
            Obx(
              () => Column(
                children: newsControllor.newsForYou
                    .map(
                      (e) => InkWell(
                        onTap: () {
                          Get.to(
                            NewsDetails(
                              title: e.title.toString(),
                              imgUrl: e.urlToImage.toString(),
                              description: e.content.toString(),
                              author: e.author.toString(),
                            ),
                          );
                        },
                        child: NewsforYou(
                          title: e.title ?? "title",
                          author: e.author ?? "Author",
                          img_url: e.urlToImage ??
                              "https://img.freepik.com/free-photo/3d-rendering-illustration-letter-blocks-forming-word-news-white-background_181624-60840.jpg?w=1060&t=st=1709550375~exp=1709550975~hmac=db3d2b779b436d8394ae236136d9a982355dba7c3b490edfaa24e9a7b3124297",
                          // subtitle: e?.source.name.toString() ?? "subtitle",
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            //  NewsforYou(
            //   title: "title",
            //   author: "author",
            //   subtitle: "subtitle",
            // ),
          ],
        ),
      ),
    );
  }
}
