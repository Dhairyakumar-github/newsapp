import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:newsapp/Model/NewsModel.dart';

class NewsController extends GetxController {
  RxList<NewsModel> newsForYou = <NewsModel>[].obs;
  RxList<NewsModel> newsForYou5 = <NewsModel>[].obs;
  RxList<NewsModel> trendingNews = <NewsModel>[].obs;
  RxBool istrandinloading = false.obs;
  RxBool isNewTOYouloading = false.obs;

  void onInit() async {
    super.onInit();
    await getTrendingNews();
    await getNewsForYou();
  }

  Future<void> getTrendingNews() async {
    istrandinloading.value = true;
    print("hello");
    var baseUrl =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=ea97c6bb67b040759084c3c20ea5e5cf";

    try {
      var response = await http.get(Uri.parse(baseUrl));
      // print(response);

      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        // print(body);
        var articles = body["articles"];
        // print(articles);

        for (var news in articles) {
          trendingNews.add(NewsModel.fromJson(news));
        }

        // print(trendingNews);
      } else {
        // print("Request failed with status: ${response.statusCode}");
      }
    } catch (e) {
      // print("Error: $e");
    }
    istrandinloading.value = false;
  }

  Future<void> getNewsForYou() async {
    isNewTOYouloading.value = true;
    print("hello");
    var baseUrl =
        "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=ea97c6bb67b040759084c3c20ea5e5cf";

    try {
      var response = await http.get(Uri.parse(baseUrl));
      print(response);

      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        print(body);
        var articles = body["articles"];
        print(articles);

        for (var news in articles) {
          newsForYou.add(NewsModel.fromJson(news));
        }
        newsForYou5 = newsForYou.sublist(0, 10).obs;
        print(newsForYou);
      } else {
        print("Request failed with status: ${response.statusCode}");
        print("kuch error hai");
      }
    } catch (e) {
      print("Error: $e");
    }
    isNewTOYouloading.value = false;
  }
}
