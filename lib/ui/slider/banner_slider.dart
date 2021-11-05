import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


var bannerList = [
  'assets/images/coming_movies/poster_1.jpg',
  "assets/images/coming_movies/poster_2.jpg",
  "assets/images/coming_movies/poster_3.jpg",
  "assets/images/coming_movies/poster_4.jpg",
  "assets/images/coming_movies/poster_5.jpg"
];

class CarouselWithIndicator extends StatefulWidget {
  final List<String> bannerList;

  const CarouselWithIndicator({Key? key, required this.bannerList}) : super(key: key);

  @override
  _CarouselWithIndicatorState createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _currentPosition = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imgSliders = widget.bannerList
        .map((item) => ClipRRect(
          child: Stack(
            children: <Widget>[
              Image.asset(
                item,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: widget.bannerList.map((item) {
                      int index = widget.bannerList.indexOf(item);
                      return Container(
                        width: 8,
                        height: 8,
                        margin: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 3,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentPosition == index
                              ? const Color.fromRGBO(255, 255, 255, 0.9)
                              : const Color.fromRGBO(255, 255, 255, 0.4),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              )
            ],
          ),
        ))
        .toList();

    return Column(
      children: [
        CarouselSlider(
          items: imgSliders,
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.5,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _currentPosition = index;
              });
            },
          ),
        ),
      ],
    );
  }
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}