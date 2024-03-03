import 'package:flutter/material.dart';

class NewsforYou extends StatelessWidget {
  final String title;
  final String subtitle;
  final String author;
  const NewsforYou(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.author});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                      Text(author.toString())
                    ],
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "This is sub title of News title and subtitle of News subtitle and subtitle ",
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
    );
  }
}
