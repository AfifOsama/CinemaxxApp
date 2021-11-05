import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinemaxx/model/coming_movies_data.dart';
import 'package:cinemaxx/model/movies_data.dart';
import 'package:cinemaxx/model/news_data.dart';
import 'package:cinemaxx/ui/slider/banner_slider.dart';
import 'package:flutter/material.dart';

import 'detail_page.dart';
import 'news_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Cinemaxx')),
          titleTextStyle: const TextStyle(
            fontFamily: "Roboto Black",
            fontSize: 20,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: const <Widget>[
                  DropDown(),
                  Positioned(
                    left: 14,
                    top: 12,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
              CarouselWithIndicator(bannerList: bannerList),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'SEDANG TAYANG',
                style: TextStyle(fontFamily: "Roboto Black", fontSize: 22),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: CarouselSlider(
                  items: moviesDataList.map((movies) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailPage(movies: movies);
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Stack(
                            children: <Widget>[
                              Hero(
                                tag: movies,
                                child: Image.asset(movies.images,
                                    fit: BoxFit.cover, width: 400),
                              ),
                              Positioned(
                                bottom: 0.0,
                                left: 5.0,
                                right: 0.0,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(200, 0, 0, 0),
                                        Color.fromARGB(5, 0, 0, 0),
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 10,
                                  ),
                                  child: Text(
                                    movies.nama,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: 'Staatliches',
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ));
                  }).toList(),
                  options: CarouselOptions(
                      height: 450, aspectRatio: 1, enlargeCenterPage: true),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 24),
                child: Divider(
                  thickness: 1.5,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 8),
                child: const Text(
                  "Cinemaxx News",
                  style: TextStyle(fontFamily: "Roboto Black", fontSize: 18),
                ),
              ),
              const Text(
                "Berita terbaru tentang Film",
                style: TextStyle(fontFamily: "Roboto Light", fontSize: 12),
              ),
              Container(
                height: 550,
                padding: const EdgeInsets.only(top: 16),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: newsDataList.map((item) {
                    return Card(
                      child: ListTile(
                        leading: Image.asset(item.image,
                            width: 75, height: 75, fit: BoxFit.cover),
                        contentPadding: const EdgeInsets.all(12),
                        title: Text(item.title,
                            style: const TextStyle(fontSize: 14)),
                        subtitle: Row(children: [
                          Text(item.writer),
                          const SizedBox(width: 10),
                          const Icon(Icons.date_range,
                              size: 15, color: Colors.grey),
                          Text(item.date)
                        ]),
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return NewsPage(item: item);
                        })),
                      ),
                    );
                  }).toList(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Divider(
                  thickness: 1.5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Coming Movies",
                      style:
                          TextStyle(fontFamily: "Roboto Black", fontSize: 18),
                    ),
                    const Text(
                      "Film-Film yang akan segera tayang di bioskop Indonesia",
                      style:
                          TextStyle(fontFamily: "Roboto Light", fontSize: 12),
                    ),
                    Container(
                        height: 320,
                        padding: const EdgeInsets.symmetric(vertical: 24),
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: comingMoviesList.map((item) {
                              return Column(children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  width: 150,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        item.images,
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                Container(
                                  width: 120,
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text(
                                    item.nama,
                                    style: const TextStyle(
                                        fontFamily: 'Staatliches',
                                        fontSize: 16),
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  padding: const EdgeInsets.only(top: 2),
                                  child: Text(
                                    item.genre,
                                    style: const TextStyle(
                                        fontFamily: 'Roboto Light',
                                        fontSize: 13),
                                  ),
                                )
                              ]);
                            }).toList()))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String kota = "JAKARTA";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 36),
      height: 50,
      //gives the height of the dropdown button
      width: MediaQuery.of(context).size.width,
      //gives the width of the dropdown button
      decoration: const BoxDecoration(
        color: Color(0xFFD4D4D4),
      ),
      // padding: const EdgeInsets.symmetric(horizontal: 13), //you can include padding to control the menu items
      child: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
              // background color for the dropdown items
              buttonTheme: ButtonTheme.of(context).copyWith(
                alignedDropdown:
                    true, //If false (the default), then the dropdown's menu will be wider than its button.
              )),
          child: DropdownButtonHideUnderline(
            // to hide the default underline of the dropdown button
            child: DropdownButton<String>(
              value: kota,
              hint: const Text('Pilih Kota'),
              icon: const Icon(Icons.keyboard_arrow_down),
              iconEnabledColor: const Color(0xFF595959),
              // icon color of the dropdown button
              items: <String>[
                'JAKARTA',
                'BEKASI',
                'SEMARANG',
                'YOGYAKARTA',
                'SURABAYA',
                'BANDUNG',
                'SURAKARTA',
                'TANGERANG'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  kota = value!;
                });
              },
              isExpanded: true,
            ),
          )),
    );
  }
}
