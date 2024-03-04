import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/pages/NewsDetails/NewsDetails.dart';

class NewsforYou extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? author;
  final String? img_url;
  final VoidCallback? ontap;
  const NewsforYou({
    super.key,
    this.title,
    this.subtitle,
    this.author,
    this.ontap,
    this.img_url,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        width: MediaQuery.of(context).size.width * 0.95,
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(167, 165, 184, 200),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10),
              width: 130,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 88, 85, 85),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  img_url.toString(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 12,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Text(
                            author.toString(),
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          title.toString(),
                          // textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        // Text(
                        //   "This is sub title of News title and subtitle of News subtitle and subtitle ",
                        //   // maxLines: 2,
                        //   softWrap: true,
                        //   // overflow:,
                        //   style: TextStyle(fontSize: 11),
                        // ),
                        SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
