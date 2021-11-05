import 'package:cinemaxx/model/movies_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class DetailPage extends StatelessWidget {
  final MoviesData movies;
  final robotoRegular = const TextStyle(fontFamily: "Roboto Regular", fontSize: 13.5);
  final robotoLight = const TextStyle(fontFamily: "Roboto Light", fontSize: 13);

  const DetailPage({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                SizedBox(
                    height: 200,
                    child: Image.asset(
                      movies.images,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    )),
                Positioned(
                  top: 180,
                  left: 24,
                  child: Hero(
                    tag: movies,
                    child: Container(
                      height: 150,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(3, 2),
                            blurRadius: 12,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(movies.images)),
                    ),
                  ),
                ),
                SafeArea(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )),
                ))
              ],
              clipBehavior: Clip.none,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 140,
                ),
                SizedBox(
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(movies.nama,
                          style: const TextStyle(
                            fontFamily: "Staatliches",
                            fontSize: 24,
                          )),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Text(
                            'Genre',
                            style: robotoLight,
                          ),
                          const SizedBox(
                            width: 44,
                          ),
                          Text(
                            movies.genre,
                            style: robotoRegular,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Text(
                            'Durasi',
                            style: robotoLight,
                          ),
                          const SizedBox(
                            width: 42,
                          ),
                          Text(
                            movies.durasi,
                            style: robotoRegular,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Text(
                            'Sutradara',
                            style: robotoLight,
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          Text(
                            movies.sutradara,
                            style: robotoRegular,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Text(
                            'Rating Usia',
                            style: robotoLight,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Text(
                            movies.ratingUsia,
                            style: robotoRegular,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(height: 40, thickness: 1.5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        movies.ratingImdb.toString(),
                        style: const TextStyle(
                            fontFamily: 'Roboto Black',
                            fontSize: 30,
                            color: Color.fromARGB(255, 229, 191, 0)),
                      ),
                    ),
                    RatingBarIndicator(
                      itemBuilder: (context, index) =>
                          const Icon(Icons.star, color: Colors.amber),
                      rating: movies.ratingImdb / 2,
                      itemCount: 5,
                      itemSize: 25,
                    ),
                  ],
                ),
                Row(
                  children: const [
                    FavoriteButton(),
                    Padding(
                      padding: EdgeInsets.only(right: 24),
                      child: Text(
                        'DINANTIKAN',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Roboto Regular",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 25),
              child: const Text(
                'IMDB Rating',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
              ),
            ),
            const Divider(
              thickness: 1.5,
              height: 35,
            ),
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  const TabBar(
                    tabs: [
                      Tab(
                        child: Text('Sinopsis',
                            style: TextStyle(
                              fontFamily: "Roboto Black",
                              fontSize: 16,
                              color: Colors.grey,
                            )),
                      ),
                      Tab(
                        child: Text('Jadwal',
                            style: TextStyle(
                              fontFamily: "Roboto Black",
                              fontSize: 16,
                              color: Colors.grey,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 400,
                    child: TabBarView(children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
                            child: Text(
                              movies.sinopsis,
                              style: const TextStyle(fontFamily: "Roboto Light", wordSpacing: 3),
                            ),
                          ),
                          const Divider(
                            thickness: 0.5,
                            height: 35,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 4.0, left: 24.0),
                            child: Text('FOTO',
                                style: TextStyle(
                                  fontFamily: "Roboto Black",
                                  fontSize: 16,
                                )),
                          ),
                          Container(
                            height: 100,
                            padding: const EdgeInsets.only(top: 16),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: movies.imagesUrls.map((item) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8),
                                  width: 180,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      item,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                      Column(
                          children:[
                            Image.asset('assets/images/movies_icon.png',width: 150,),
                            const Text('Maaf, jadwal masih belum tersedia. \nMohon kembali beberapa saat lagi',
                            style:TextStyle(
                                color:Colors.grey,
                            )),
                          ]),
                    ],),
                  )
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
        if (isFavorite) {
          showToast(
            'Film ini telah dimasukkan dalam wishlist',
            backgroundColor: const Color.fromRGBO(0, 0, 0, 0.3),
            context: context,
            animation: StyledToastAnimation.fade,
            reverseAnimation: StyledToastAnimation.fade,
            position: StyledToastPosition.bottom,
            curve: Curves.fastOutSlowIn,
            //
            reverseCurve: Curves.fastLinearToSlowEaseIn,
            animDuration: const Duration(seconds: 1),
            duration: const Duration(seconds: 2),
          );
        } else {
          showToast(
            'Film ini telah dihapus dari wishlist',
            backgroundColor: const Color.fromRGBO(0, 0, 0, 0.3),
            context: context,
            animation: StyledToastAnimation.fade,
            reverseAnimation: StyledToastAnimation.fade,
            position: StyledToastPosition.bottom,
            curve: Curves.fastOutSlowIn,
            //
            reverseCurve: Curves.fastLinearToSlowEaseIn,
            animDuration: const Duration(seconds: 1),
            duration: const Duration(seconds: 2),
          );
        }
      },
    );
  }
}
