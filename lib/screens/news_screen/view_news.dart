import 'package:flutter/material.dart';
import 'package:news/screens/news_screen/wep_view_screen.dart';

import '../../models/NewsDataModel.dart';

class ViewNews extends StatelessWidget {
  Articles articles;

  ViewNews({super.key, required this.articles});

// String urlToImage;
// String title;
// String desc;
// String author;
// String publishedAt;
// ViewNews(
//     { required this.urlToImage,required this.title,required this.desc,required this.author,required this.publishedAt});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(articles.source!.name ?? ""),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(articles.urlToImage ?? "")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                articles.author ?? "",
                style: const TextStyle(color: Color(0xFF79828B)),
              ),
            ),
            Text(articles.title ?? ""),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Spacer(),
                Text(articles.publishedAt?.substring(0, 10) ?? ""),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Text(articles.content ?? ""),
            ),
            const SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return WebViewAllNews(
                      articles: articles,
                    );
                  },
                ));
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('View Full Article'),
                  Icon(Icons.play_arrow),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
