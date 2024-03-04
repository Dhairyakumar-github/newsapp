import 'package:flutter/material.dart';

class Trandings extends StatelessWidget {
  final String authorname;
  final String newsTitle;
  final String url;

  const Trandings(
      {super.key,
      required this.authorname,
      required this.newsTitle,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      width: 230,
      height: 270,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 205,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: const Color.fromARGB(255, 88, 85, 85),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Flexible(
              child: Text(
                newsTitle.toString(),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          // const Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 5),
          //   child: Text(
          //     "This is sub title of News title  and subtitle of  News subtitle and subtitle ",
          //     maxLines: 2,       overflow: TextOverflow.ellipsis,
          //     style: TextStyle(fontSize: 11),
          //   ),
          // ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  radius: 13,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: Text(
                  authorname,
                  // softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
