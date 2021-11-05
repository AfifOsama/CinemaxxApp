import 'package:cinemaxx/model/news_data.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  final NewsData item;

  const NewsPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cinemaxx News'),
        titleTextStyle: const TextStyle(
          fontFamily: "Roboto Black",
          fontSize: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(item.image),
            Container(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(
                        fontFamily: "Roboto Black", fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("By ${item.writer}"),
                        Row(
                          children: [
                            const Icon(Icons.date_range,
                                size: 15, color: Colors.grey),
                            const SizedBox(width: 5),
                            Text(item.date),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 1.5,
                  ),
                  Container(
                      padding: const EdgeInsets.only(top: 16),
                      height: 700,
                      child: Text(
                        item.content,
                        style: const TextStyle(fontFamily: "Oxygen"),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
