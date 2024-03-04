// To parse this JSON data, do
//
//     final newsModel = newsModelFromJson(jsonString);

import 'dart:convert';

List<NewsModel> newsModelFromJson(String str) =>
    List<NewsModel>.from(json.decode(str).map((x) => NewsModel.fromJson(x)));

String newsModelToJson(List<NewsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NewsModel {
  // Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  // DateTime publishedAt;
  String? content;

  NewsModel({
    // required this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    // required this.publishedAt,
    this.content,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        // source: Source.fromJson(json["source"]),
        author: json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        // publishedAt: DateTime.parse(json["publishedAt"]),
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        // "source": source.toJson(),
        "author": author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        // "publishedAt": publishedAt.toIso8601String(),
        "content": content,
      };
}

class Source {
  Id? id;
  Name? name;

  Source({
    this.id,
    this.name,
  });

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: idValues.map[json["id"]]!,
        name: nameValues.map[json["name"]]!,
      );

  Map<String, dynamic> toJson() => {
        "id": idValues.reverse[id],
        "name": nameValues.reverse[name],
      };
}

enum Id { TECHCRUNCH }

final idValues = EnumValues({"techcrunch": Id.TECHCRUNCH});

enum Name { TECH_CRUNCH }

final nameValues = EnumValues({"TechCrunch": Name.TECH_CRUNCH});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
